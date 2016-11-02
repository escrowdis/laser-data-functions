#include "mainwindow.h"
#include "ui_mainwindow.h"


using namespace std;

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    for(int i=1;i<11;i++)
    { //write comport name
        ui->comboBox_7->addItem("COM"+QString::number(i));
    }

    ui->comboBox_7->setCurrentIndex(5);
    ui->comboBox_8->setCurrentIndex(2);

    timer=new QTimer;

    connect(timer,SIGNAL(timeout()),this,SLOT(ReadRangeData()));

}

MainWindow::~MainWindow()
{
    outLaserFile.close();
    delete ui;
}

void MainWindow::on_pushButton_clicked()
{
    rangeDataCollector.Open(ui->comboBox_7->currentText(),ui->comboBox_8->currentText().toInt());
    if(!rangeDataCollector.IsOpen())
        QMessageBox::information(this,"Error","Laser is disable");
    else
        cout<<"Laser is enable"<<endl;
       // QMessageBox::information(this,"Succeed","Laser is enable");


}



void MainWindow::on_pushButton_2_clicked()
{
    QString name=ui->lineEdit->text()+".txt";
    outLaserFile.open(name.toStdString());
    if(!outLaserFile)
        QMessageBox::information(this,"Error","outFile is disable");
    timer->start(1);
    count=0;
}

void MainWindow::ReadRangeData()
{

    if(count==(ui->spinBox->value()))
    {
        QMessageBox::information(this,"Finished","Collection done!");

        timer->stop();
        outLaserFile.close();
    }

    cv::Mat img(800,800,CV_8UC3);
    img=cv::Scalar::all(0);

    vector<double> temp;
    temp.reserve(361);
    rangeDataCollector.TriggerLaser();

    Sleep(350); //wait laser data

    rangeDataCollector.ReadData(temp);


    outLaserFile<<count<<" "<<temp[temp.size()/2]<<endl; //save range data

    /////////////////////////////////////////////////////////////////////
    //Draw laser scan
    double angle=0;

    for(int i=0;i!=temp.size();++i)
    {


         double r=temp[i];
         double x=r*cos(angle*CV_PI/180.0);
         double y=r*sin(angle*CV_PI/180.0);

         cv::circle(img, cv::Point(x/ui->spinBox_2->value()+400,y/ui->spinBox_2->value()+100), 1, cv::Scalar(0,0,255), -1  );
         if(temp.size()/2==i)
             cv::circle(img, cv::Point(x/ui->spinBox_2->value()+400,y/ui->spinBox_2->value()+100), 5, cv::Scalar(0,255,0), -1  );


        angle+=0.5;
    }

    cv::imshow("img",img);
    cv::waitKey(1);
    /////////////////////////////////////////////////////////////////////

    ui->statusBar->showMessage("Laser count:"+QString::number(count));
    cout<<count<<" "<<temp[temp.size()/2]<<endl;
    count++;

}
