import QtQuick 2.0
import QtQuick.Controls 1.4

Rectangle {
    id: monstercollectioninfo
    anchors.fill: parent

    Column {

        Row {
            Text {
                text: "name: Pumpkin"
            }
        }

        Image {
            source: "gfx/monsters/pumpkin.png"
        }


    }


    Button {
        text: "Back"
        anchors: parent
        onClicked: {
            monstercollectioninfo.destroy()
        }
    }
}

