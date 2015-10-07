import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    visible: true
    width: 360
    height: 500

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
            Qt.quit();
        }
    }

    Rectangle {
        anchors.fill: parent

        Button {
            text: "GO HUNTING"
            x: parent.width * 0.15
            y: parent.height * 0.10
            width: parent.width * 0.7
            anchors.centerIn: parent.Center
        }

        Button {
            text: "BROWSE COLLECTION"
            x: parent.width * 0.15
            y: parent.height * 0.30
            width: parent.width * 0.7
            anchors.centerIn: parent.Center
        }

        Button {
            text: "VERSUS"
            x: parent.width * 0.15
            y: parent.height * 0.5
            width: parent.width * 0.7
            anchors.centerIn: parent.Center
        }

        Button {
            text: "F"
            x: parent.width * 0.1
            y: parent.height * 0.9
        }
    }
}

