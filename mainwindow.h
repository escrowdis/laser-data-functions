#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include<QMessageBox>
#include<QTimer>
#include<fstream>
#include<iostream>
#include"opencv.hpp"
#include"lasercontroller.h"

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

public slots:
    void ReadRangeData();

private slots:
    void on_pushButton_clicked();

    void on_pushButton_2_clicked();

private:
    Ui::MainWindow *ui;
    LaserController rangeDataCollector;
    std::ofstream outLaserFile;
    QTimer *timer;
    int count;
};

#endif // MAINWINDOW_H
