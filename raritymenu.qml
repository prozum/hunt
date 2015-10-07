import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: raritymenu
    Rectangle {
        anchors.fill: parent

        Button {
            text: "Back"
            x: parent.width * 0.1
            y: parent.height * 0.9
            onClicked: raritymenu.destroy()
        }
    }
}

