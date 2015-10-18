import QtQuick 2.0

Item {
    anchors.fill: parent

    Logo {
        source: "gfx/logo.png"
        width: root.width * 0.9
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        anchors.centerIn: parent
        spacing: 32

        CustomButton {
            text: "Hunt"
            link: "RarityMenu.qml"
        }
        CustomButton {
            text: "Collection"
            link: "MonsterCollectionMenu.qml"
        }
        CustomButton {
            text: "Versus"
            link: "facebook"
        }
    }

    Row {
        spacing: parent.width - 160
        anchors.horizontalCenter: parent.horizontalCenter
        y: parent.height - 80

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
                        //root.visible = false
                        component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height});
                    }
                }
            }
        }
    }
}

