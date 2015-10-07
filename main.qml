import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Window {
    id: main
    visible: true
    x: 0
    y: 0
    width: 360
    height: 500

    Rectangle {
        id: mainmaster
        anchors.fill: parent

        Button {
            text: "GO HUNTING"
            x: parent.width * 0.15
            y: parent.height * 0.10
            width: parent.width * 0.7
            anchors.centerIn: parent.Center
            onClicked: {
                var component = Qt.createComponent("raritymenu.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(main, {x: 0, y: 0, width: main.width, height: main.height})
                }
            }
        }

        Button {
            text: "MONSTER COLLECTION"
            x: parent.width * 0.15
            y: parent.height * 0.30
            width: parent.width * 0.7
            anchors.centerIn: parent.Center
            onClicked: {
                var component = Qt.createComponent("monstercollectionmenu.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(main, {x: 0, y: 0, width: main.width, height: main.height})
                }
            }
        }

        Button {
            text: "VERSUS"
            x: parent.width * 0.15
            y: parent.height * 0.5
            width: parent.width * 0.7
            anchors.centerIn: parent.Center
            onClicked: {
                var component = Qt.createComponent("versusmenu.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(main, {x: 0, y: 0, width: main.width, height: main.height})
                }
            }
        }

        Item {
            id: facebookitem
            x: parent.width * 0.1
            y: parent.height * 0.9
            width: 29
            height: 29

            Image {
                id: facebook
                source: "FB-f-Logo__blue_29.png"
                sourceSize: Qt.size(parent.width, parent.height)
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var component = Qt.createComponent("facebook.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(main, {x: 0, y: 0, width: main.width, height: main.height});
                    }
                }
            }
        }

        Item {
            id: settingsitem
            x: parent.width * 0.9
            y: parent.height * 0.9
            width: 29
            height: 29

            Image {
                id: settings
                source: "FEZ-04-512.png"
                sourceSize: Qt.size(parent.width, parent.height)
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var component = Qt.createComponent("setting.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(main, {x: 0, y: 0, width: main.width, height: main.height});
                    }
                }
            }
        }
    }
}

