import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Window {
    id: root
    visible: true
    width: 360
    height: 500

    Logo {
        source: "gfx/logo.png"
        width: root.width * 0.9
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        anchors.centerIn: parent
        spacing: 26
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

    Row {
        spacing: root.width - 128
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height*0.9

        Image {
            id: facebookitem
            source: "gfx/facebook.png"

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

        Image {
            id: settingsitem
            source: "gfx/settings.png"

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

