import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Window {
    id: root
    visible: true
    x: 0
    y: 0
    width: 360
    height: 500

    Rectangle {
        id: rootmaster
        anchors.fill: parent

        Logo {
            id: logo
            source: "gfx/logo.png"
            width: root.width -200
        }

        Column {
            anchors.centerIn: parent
            spacing: 16
            Button {
                text: "GO HUNTING"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var component = Qt.createComponent("RarityMenu.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                    }
                }
            }

            Button {
                text: "MONSTER COLLECTION"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var component = Qt.createComponent("MonsterCollectionMenu.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                    }
                }
            }

            Button {
                text: "VERSUS"
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    var component = Qt.createComponent("VersusMenu.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                    }
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
                source: "gfx/facebook.png"
                sourceSize: Qt.size(parent.width, parent.height)
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var component = Qt.createComponent("Facebook.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height});
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
                source: "gfx/settings.png"
                sourceSize: Qt.size(parent.width, parent.height)
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    var component = Qt.createComponent("Setting.qml");
                    if(component.status == Component.Ready)
                    {
                        component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height});
                    }
                }
            }
        }
    }
}

