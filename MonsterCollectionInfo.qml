import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: monstercollectioninfo
    anchors.fill: parent

    property string name
    property string icon

    Column {
        anchors.fill: parent

        Row {
            Text {
                text: "name: " + monstercollectioninfo.name
            }
        }

        Image {
            source: monstercollectioninfo.icon
        }


    }

    Button {
        text: "Back"
        x: parent.width * 0.1
        y: parent.height * 0.9
        onClicked: monstercollectioninfo.destroy()
    }
}

