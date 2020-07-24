QT += quick
TARGET = Application
TEMPLATE = app
CONFIG += c++11

# The following define makes your compiler emit warnings if you use
# any Qt feature that has been marked deprecated (the exact warnings
# depend on your compiler). Refer to the documentation for the
# deprecated API to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
        main.cpp

RESOURCES += qml.qrc

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Additional import path used to resolve QML modules just for Qt Quick Designer
QML_DESIGNER_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target


ios {
    iospropertylist.input = $$PWD/Info.plist.in
    iospropertylist.output = $$PWD/Info.plist
    QMAKE_SUBSTITUTES += iospropertylist

    QMAKE_TARGET_BUNDLE_PREFIX = "com.company"
    QMAKE_BUNDLE = mobilegallery
    QMAKE_IOS_DEPLOYMENT_TARGET = 12.2
    QMAKE_APPLE_TARGETED_DEVICE_FAMILY = 1,2

    QMAKE_ASSET_CATALOGS = $$PWD/ios/Assets.xcassets
    QMAKE_INFO_PLIST = $$PWD/Info.plist
}

VERSION = 1.0.0.0
QMAKE_TARGET_COMPANY = Company
QMAKE_TARGET_PRODUCT = Application