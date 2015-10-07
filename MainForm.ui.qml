import QtQuick 2.5
import QtQuick.Extras 1.4

Rectangle {
    property alias mouseArea: mouseArea

    width: 360
    height: 500

    MouseArea {
        id: mouseArea
        anchors.fill: parent
    }
}

