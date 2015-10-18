import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Slider {
    //anchors.centerIn: parent
    style: SliderStyle {
        groove: Rectangle {
            implicitWidth: 200
            implicitHeight: 8
            color: "gray"
            radius: 8
        }
        handle: Rectangle {
            anchors.centerIn: parent
            color: control.pressed ? "white" : "lightgray"
            border.color: "gray"
            border.width: 2
            implicitWidth: 34
            implicitHeight: 34
            radius: 12
        }
    }
}

