import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: monstercollectioninfo
    Rectangle {
        anchors.fill: parent

        Button {
            text: "INFO TO BE ADDED"
            anchors.fill: parent
            onClicked: {
                monstercollectioninfo.destroy()
            }
        }
    }
}

