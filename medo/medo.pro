#-------------------------------------------------
#
# Project generated by QtCreator for SyberOS.
#
#-------------------------------------------------

QML_IMPORT_PATH = $$[QT_INSTALL_QML]

RESOURCES += res.qrc

CONFIG += link_pkgconfig

PKGCONFIG += syberos-application syberos-application-cache syberos-qt

# This is needed for using syberos-application and syberos-qt module
INCLUDEPATH += $$[QT_INSTALL_HEADERS]/../syberos_application \
			   $$[QT_INSTALL_HEADERS]/../framework

QT += gui qml quick sql multimedia

TARGET = medo

#Please Do not modify these macros, otherwise your app will not installed correctly and will not run at all.
APP_DIR = /data/apps
APP_DATA = /data/data
INS_DIR = $$APP_DIR/com.syberos.medo
DATA_DIR = $$APP_DATA/com.syberos.medo

DEFINES += SOP_ID=\\\"com.syberos.medo\\\"
DEFINES += APP_DIR_ENVVAR=\\\"APPDIR_REGULAR\\\"
# Currently home screen sets the environment variable, so when run from
# elsewhere, use this work-around instead.
DEFINES += APP_DIR=\\\"$$APP_DIR\\\"

# The .cpp file which was generated for your project.
SOURCES += src/main.cpp \
           src/medo_Workspace.cpp \
    src/cmedodbmanager.cpp \
    src/cmedorecord.cpp \
    src/cmedorecordmanager.cpp \
    src/cmedolistmodel.cpp \
    src/cmedorecordthread.cpp \
    src/cmedoattmanager.cpp \
    src/attachment.cpp

HEADERS += src/medo_Workspace.h \
    src/cmedodbmanager.h \
    src/cmedorecord.h \
    src/cmedorecordmanager.h \
    src/cmedolistmodel.h \
    src/cmedorecordthread.h \
    src/cmedoattmanager.h \
    src/attachment.h

# Installation path
target.path = $$INS_DIR/bin

res.files = res
res.path = $$INS_DIR/

meta.files = META-INF
meta.path = $$INS_DIR/

syber.files = sopconfig.xml
syber.path = $$INS_DIR/

INSTALLS += target res meta syber

QML_FILES = qml/*.qml

OTHER_FILES += $$QML_FILES *.qm \
    qml/CMedoDropListView.qml \
    qml/CMedoEditPage.qml \
    qml/SlideDelegate.qml
               


