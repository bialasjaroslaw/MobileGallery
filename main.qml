import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Dialogs 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    FileDialog {
        id: fileDialog
        title: qsTr("Please choose a file")
        folder: shortcuts.pictures
        nameFilters: [ "Image files (*.jpg *.jpeg *.png)" ]
        onAccepted: {
            console.log(Qt.resolvedUrl(fileDialog.fileUrl))
        }
    }

    Component.onCompleted: {
        fileDialog.visible = true
    }
}
