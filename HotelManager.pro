QT       += core gui sql

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

CONFIG += c++11

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    CentralWidget.cpp \
    calendarscrollwidget.cpp \
    calendarwidget.cpp \
    dateuserinformerwidget.cpp \
    datewidget.cpp \
    guestwidget.cpp \
    main.cpp \
    mainwindow.cpp \
    roomstabwidget.cpp \
    scrollbar.cpp \
    sidebar.cpp \
    startupwidget.cpp \
    tabledata.cpp \
    tabledataeditors.cpp \
    tableviewfilters.cpp

HEADERS += \
    CentralWidget.h \
    calendarscrollwidget.h \
    calendarwidget.h \
    dateuserinformerwidget.h \
    datewidget.h \
    guestwidget.h \
    mainwindow.h \
    roomstabwidget.h \
    scrollbar.h \
    sidebar.h \
    startupwidget.h \
    tabledata.h \
    tabledataeditors.h \
    tableviewfilters.h

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

RC_FILE = myapp.rc
RESOURCES += \
    resources.qrc

DISTFILES += \
    myapp.rc \
    style/style.css
