TEMPLATE = lib
CONFIG += qt warn_on
QT -= gui

greaterThan(QT_MAJOR_VERSION, 5):QT += core5compat

CONFIG -= debug_and_release

CONFIG += staticlib
DEFINES += QUAZIP_BUILD
DEFINES += QUAZIP_STATIC

TARGET = $$join(TARGET,,,-qt$$QT_MAJOR_VERSION)
CONFIG(staticlib):TARGET = $$join(TARGET,,,-s)
CONFIG(debug debug|release):TARGET = $$join(TARGET,,,-d)


DEFINES += NOMINMAX
INCLUDEPATH += $$[QT_INSTALL_HEADERS]/QtZlib

headers.path=$$PREFIX/include/quazip
headers.files=$$HEADERS
target.path=$$PREFIX/lib
INSTALLS += headers target

INCLUDEPATH += $$PWD
DEPENDPATH += $$PWD

HEADERS += \
        $$PWD/minizip_crypt.h \
        $$PWD/ioapi.h \
        $$PWD/JlCompress.h \
        $$PWD/quaadler32.h \
        $$PWD/quachecksum32.h \
        $$PWD/quacrc32.h \
        $$PWD/quagzipfile.h \
        $$PWD/quaziodevice.h \
        $$PWD/quazipdir.h \
        $$PWD/quazipfile.h \
        $$PWD/quazipfileinfo.h \
        $$PWD/quazip_global.h \
        $$PWD/quazip_qt_compat.h \
        $$PWD/quazip.h \
        $$PWD/quazipnewinfo.h \
        $$PWD/unzip.h \
        $$PWD/zip.h

SOURCES += $$PWD/qioapi.cpp \
           $$PWD/JlCompress.cpp \
           $$PWD/quaadler32.cpp \
           $$PWD/quachecksum32.cpp \
           $$PWD/quacrc32.cpp \
           $$PWD/quagzipfile.cpp \
           $$PWD/quaziodevice.cpp \
           $$PWD/quazip.cpp \
           $$PWD/quazipdir.cpp \
           $$PWD/quazipfile.cpp \
           $$PWD/quazipfileinfo.cpp \
           $$PWD/quazipnewinfo.cpp \
           $$PWD/unzip.c \
           $$PWD/zip.c
