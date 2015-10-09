import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: monstercollectioninfo
    anchors.fill: parent

    property string name
    property string icon

    Column {
        anchors.top: monstercollectioninfo.top
        anchors.left: monstercollectioninfo.left
        anchors.leftMargin: 10
        anchors.topMargin: 10
        spacing: 25
        Text {
            text: "name: " + monstercollectioninfo.name
        }
        Text {
            text: "rule: Will try to \nescape when seen"
        }
        Text {
            text: "str: 50\nint: -1\nagi: 10"
        }
    }

    Image {
        anchors.right: monstercollectioninfo.right
        //anchors.horizontalCenter: parent.horizontalCenter
        fillMode: Image.PreserveAspectFit
        width: parent.width/2
        height: parent.width/2
        source: monstercollectioninfo.icon
    }



    Button {
        text: "Back"
        x: parent.width * 0.1
        y: parent.height * 0.9
        onClicked: monstercollectioninfo.destroy()
    }
}

