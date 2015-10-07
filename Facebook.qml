import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: facebook
    Rectangle {
        anchors.fill: parent

        Button {
            text: "Error:\nCould not connect\nto facebook.\n\nTap to go back..."
            anchors.fill: parent
            onClicked: {
                facebook.destroy()
            }
        }
    }
}

