#-------------------------------------------------
#
# Project created by QtCreator 2013-08-21T03:22:09
#
#-------------------------------------------------

QT       += core gui

TARGET = QT_Laser_analysis
TEMPLATE = app


SOURCES += main.cpp\
        mainwindow.cpp \
    win_qextserialport.cpp \
    qextserialport.cpp \
    qextserialbase.cpp \
    lasercontroller.cpp

HEADERS  += mainwindow.h \
    win_qextserialport.h \
    qextserialport.h \
    qextserialbase.h \
    lasercontroller.h

FORMS    += mainwindow.ui

INCLUDEPATH += C:/OpenCV/opencv240/include\
INCLUDEPATH +=$$quote(C:\Program Files (x86)\PCL 1.6.0\include\pcl-1.6) \
              $$quote(C:\Program Files (x86)\PCL 1.6.0\3rdParty\Boost\include) \
              $$quote(C:\Program Files (x86)\PCL 1.6.0\3rdParty\VTK\include\vtk-5.8)\
              $$quote(C:\Program Files (x86)\PCL 1.6.0\3rdParty\Eigen\include)\
              $$quote(C:\Program Files (x86)\PCL 1.6.0\3rdParty\flann\include)

#using RS232
win32:DEFINES = _TTY_WIN_

OpenCV_Libd = C:/OpenCV/opencv240/lib
OpenCV_Lib = C:/OpenCV/opencv240/lib
Boost_Lib=C:/local/boost_1_55_0/lib32-msvc-10.0
PCL_Lib= $$quote(C:\Program Files (x86)\PCL 1.6.0\lib)
VTK_Lib= %%quote(C:\Program Files (x86)\VTK/lib\vtk-5.8)


Debug: LIBS += $$OpenCV_Libd/opencv_highgui240d.lib\
                                $$OpenCV_Libd/opencv_calib3d240d.lib\
                                $$OpenCV_Libd/opencv_contrib240d.lib\
                                $$OpenCV_Libd/opencv_core240d.lib\
                                $$OpenCV_Libd/opencv_features2d240d.lib\
                                $$OpenCV_Libd/opencv_flann240d.lib\
                                $$OpenCV_Libd/opencv_gpu240d.lib\
                                $$OpenCV_Libd/opencv_imgproc240d.lib\
                                $$OpenCV_Libd/opencv_legacy240d.lib\
                                $$OpenCV_Libd/opencv_ml240d.lib\
                                $$OpenCV_Libd/opencv_objdetect240d.lib\
                                $$OpenCV_Libd/opencv_ts240d.lib\
                                $$OpenCV_Libd/opencv_video240d.lib\
                                $$OpenCV_Libd/opencv_legacy240d.lib\
                                $$OpenCV_Libd/opencv_nonfree240d.lib\
                                $$OpenCV_Libd/opencv_photo240d.lib\
                                $$OpenCV_Libd/tbb_debug.lib\
                                $$PCL_Lib/pcl_apps_debug.lib\
                                $$PCL_Lib/pcl_common_debug.lib\
                                $$PCL_Lib/pcl_io_debug.lib\
                                $$PCL_Lib/pcl_io_ply_debug.lib\
                                $$PCL_Lib/pcl_visualization_debug.lib\
                                $$Boost_Lib/libboost_thread-vc100-mt-gd-1_55.lib\
                                $$Boost_Lib/libboost_date_time-vc100-mt-gd-1_55.lib\
                                $$Boost_Lib/libboost_filesystem-vc100-mt-gd-1_55.lib\
                                $$Boost_Lib/libboost_iostreams-vc100-mt-gd-1_55.lib\
                                $$Boost_Lib/libboost_system-vc100-mt-gd-1_55.lib


Release: LIBS +=$$OpenCV_Lib/opencv_highgui240.lib\
                                $$OpenCV_Lib/opencv_calib3d240.lib\
                                $$OpenCV_Lib/opencv_contrib240.lib\
                                $$OpenCV_Lib/opencv_core240.lib\
                                $$OpenCV_Lib/opencv_features2d240.lib\
                                $$OpenCV_Lib/opencv_flann240.lib\
                                $$OpenCV_Lib/opencv_gpu240.lib\
                                $$OpenCV_Lib/opencv_imgproc240.lib\
                                $$OpenCV_Lib/opencv_legacy240.lib\
                                $$OpenCV_Lib/opencv_ml240.lib\
                                $$OpenCV_Lib/opencv_objdetect240.lib\
                                $$OpenCV_Lib/opencv_ts240.lib\
                                $$OpenCV_Lib/opencv_video240.lib\
                                $$OpenCV_Libd/opencv_legacy240.lib\
                                $$OpenCV_Libd/opencv_nonfree240.lib\
                                $$OpenCV_Libd/opencv_photo240.lib\
                                $$OpenCV_Lib/tbb.lib\
                                $$PCL_Lib/pcl_apps_release.lib\
                                $$PCL_Lib/pcl_common_release.lib\
                                $$PCL_Lib/pcl_io_release.lib\
                                $$PCL_Lib/pcl_io_ply_release.lib\
                                $$PCL_Lib/pcl_visualization_release.lib\
                                $$Boost_Lib/libboost_thread-vc100-mt-1_55.lib\
                                $$Boost_Lib/libboost_date_time-vc100-mt-1_55.lib\
                                $$Boost_Lib/libboost_filesystem-vc100-mt-1_55.lib\
                                $$Boost_Lib/libboost_iostreams-vc100-mt-1_55.lib\
                                $$Boost_Lib/libboost_system-vc100-mt-1_55.lib


