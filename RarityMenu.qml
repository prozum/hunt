import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: raritymenu
    Rectangle {
        anchors.fill: parent

        Button {
            text: "Common"
            x: parent.width * 0.1
            y: parent.height * 0.1
            width: parent.width * 0.8
            onClicked: {
                var component = Qt.createComponent("HuntTarget.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }

        Button {
            text: "Rare"
            x: parent.width * 0.1
            y: parent.height * 0.3
            width: parent.width * 0.8
            onClicked: {
                var component = Qt.createComponent("HuntTarget.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }

        Button {
            text: "Legendary"
            x: parent.width * 0.1
            y: parent.height * 0.5
            width: parent.width * 0.8
            onClicked: {
                var component = Qt.createComponent("HuntTarget.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }

        Button {
            text: "Back"
            x: parent.width * 0.1
            y: parent.height * 0.9
            onClicked: raritymenu.destroy()
        }
    }
}

