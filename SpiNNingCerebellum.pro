QT += core gui widgets printsupport network serialport sql

CONFIG += c++11
TARGET = SpiNNingCerebellum
TEMPLATE = app

SOURCES += \
    main.cpp \
    settingsdialog.cpp \
    console.cpp \
    qcustomplot.cpp \
    mainwindow.cpp \
    serialTab.cpp \
    dataprovider.cpp \
    can/CanInterface.cpp \
    can/KvaserCanInterface.cpp \
    can/muscleDriverCANInterface.cpp \
    canTab.cpp \
    dbconnection.cpp \
    canDataProvider.cpp \
    controlTab.cpp \
    dbdata.cpp \
    plotTab.cpp

HEADERS += \
    settingsdialog.h \
    console.h \
    qcustomplot.h \
    mainwindow.h \
    serialTab.h \
    dataprovider.h \
    can/CanInterface.h \
    can/KvaserCanInterface.h \
    can/muscleDriverCANInterface.h \
    canTab.h \
    dbconnection.h \
    canDataProvider.h \
    controlTab.h \
    dbdata.h \
    plotTab.h

FORMS += \
    settingsdialog.ui \
    mainwindow.ui \
    serialtab.ui \
    plottab.ui \
    cantab.ui \
    controltab.ui

RESOURCES += \
    icons.qrc

LIBS += -lcanlib

OTHER_FILES +=
