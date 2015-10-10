import QtQuick 2.0
import QtQuick.Controls 1.4
import QtMultimedia 5.0

Rectangle {
    id: huntscreen
        anchors.fill: parent

//    Video {
//        id: vid
//        x: 0
//        y: 0
//        width: parent.width
//        height: parent.height
//        source: "gfx/test.webm"
//        transform: Rotation {origin.x: width/2 ; origin.y: height/2 ; angle:90}
//        scale: 1.4
//        fillMode: { VideoOutput.PreserveAspectFit }

//        Component.onCompleted: vid.play()
//    }

    Text {
        font.pointSize: 18
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height * 0.03

        text: "You catched the monster!"

    }

    Column {
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.topMargin: 64
        spacing: 25
        Text {
            text: "name: Pumpky"
        }
        Text {
            text: "rule: Will try to \nescape when seen"
        }
        Text {
            text: "str: 50\nint: -1\nagi: 10"
        }
    }

    Image {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.topMargin: 64
        fillMode: Image.PreserveAspectFit
        width: parent.width/2
        height: parent.width/2
        source: "gfx/monsters/pumpkin.png"
    }

    Button {
        id: backtomenu
        text: "Back"
        x: parent.width * 0.1
        y: parent.height * 0.9
        onClicked: {
            huntscreen.destroy();
            hunttarget.destroy();
            raritymenu.destroy();
        }
    }
}

