import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: settings
    Rectangle {
        anchors.fill: parent

        Text {
            id: text1
            text: qsTr("Master")
            x: parent.width * 0.1
            y: parent.height * 0.1
        }

        Text {
            id: text2
            text: qsTr("Music")
            x: parent.width * 0.1
            y: parent.height * 0.3
        }

        Text {
            id: text3
            text: qsTr("Sound")
            x: parent.width * 0.1
            y: parent.height * 0.5
        }

        Text {
            id: text4
            text: qsTr("FOV")
            x: parent.width * 0.1
            y: parent.height * 0.7
        }

        Slider {
            id: slider1
            x: parent.width * 0.1
            y: parent.height * 0.15
            width: parent.width * 0.8
            value: 0.5
        }

        Slider {
            id: slider2
            x: parent.width * 0.1
            y: parent.height * 0.35
            width: parent.width * 0.8
            value: 0.5
        }

        Slider {
            id: slider3
            x: parent.width * 0.1
            y: parent.height * 0.55
            width: parent.width * 0.8
            value: 0.5
        }

        Slider {
            id: slider4
            x: parent.width * 0.1
            y: parent.height * 0.75
            width: parent.width * 0.8
            value: 0.5
        }

        Button {
            text: "Back"
            x: parent.width * 0.1
            y: parent.height * 0.9
            width: parent.width * 0.8
            onClicked: {
                settings.destroy()
            }
        }
    }
}

