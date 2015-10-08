import QtQuick 2.0
import QtQuick.Controls 1.4
import QtMultimedia 5.0

Item {
    id: huntscreen
    Rectangle {
        anchors.fill: parent

        Video {
            id: vid
            x: 0
            y: 0
            width: parent.width
            height: parent.height
            source: "gfx/test.webm"
            transform: Rotation {origin.x: width/2 ; origin.y: height/2 ; angle:90}
            scale: 1.4
            fillMode: { VideoOutput.PreserveAspectFit }

            Component.onCompleted: vid.play()
        }

        Button {
            id: backtomenu
            text: "Back to main menu"
            x: parent.width * 0.1
            y: parent.height * 0.9
            onClicked: {
                huntscreen.destroy();
                hunttarget.destroy();
                raritymenu.destroy();
            }
        }
    }

}

