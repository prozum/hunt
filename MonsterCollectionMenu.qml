import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: monstercollectionmenu
    Rectangle {
        anchors.fill: parent

        GridView {
            id: grid
            x: 30
            y: 0
            width: parent.width
            height: parent.height * 0.9

            cellWidth: 100
            cellHeight: 100
            focus: true

            highlight: Rectangle { width: 80; height: 80; color: "lightsteelblue" }

            model: ListModel {
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
                ListElement {name: "#NAME"; icon: "QMark.png"}
            }

            delegate: Column {
                width: 100
                height: 100
                Image {
                    id: idIcon
                    y: 20; anchors.horizontalCenter: parent.horizontalCenter
                    source: icon
                    width: 75
                    height: 75
                }

                Text {text: name; anchors.horizontalCenter: parent.horizontalCenter}
                MouseArea {
                    anchors.fill: parent
                    onClicked: parent.GridView.view.currentIndex = index
                }
            }
        }

        Button {
            text: "info"
            x: parent.width * 0.7
            y: parent.height * 0.9
        }

        Button {
            text: "Back"
            x: parent.width * 0.1
            y: parent.height * 0.9
            onClicked: monstercollectionmenu.destroy()
        }
    }
}

