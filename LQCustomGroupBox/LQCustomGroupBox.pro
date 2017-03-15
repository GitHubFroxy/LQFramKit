#-------------------------------------------------
#
# Project created by QtCreator 2017-03-14T22:47:02
#
#-------------------------------------------------

QT       += widgets

QT       -= gui

TARGET = LQCustomGroupBox
TEMPLATE = lib

DEFINES += LQCUSTOMGROUPBOX_LIBRARY

include ($$PWD/lqcustomgroupbox_src.pri)
INCLUDEPATH +=$$PWD/inc

win32{
    CONFIG  += debug_and_release
    CONFIG(release,debug|release){
        target_path = ../build_/release
    }else{
        target_path = ../build_/debug
    }
    DESTDIR =../bin
    MOC_DIR = $$target_path/moc
    RCC_DIR = $$target_path/rcc
    OBJECTS_DIR = $$target_path/obj
}

unix {
    target.path = /usr/lib
    INSTALLS += target
}
