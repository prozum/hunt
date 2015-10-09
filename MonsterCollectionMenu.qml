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
                ListElement {name: "Cycky"; icon: "gfx/monsters/cyclops.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Mariky"; icon: "gfx/monsters/marie.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Pumky"; icon: "gfx/monsters/pumpkin.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Slimky"; icon: "gfx/monsters/slimy.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Trucky"; icon: "gfx/monsters/truck.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "Unknown"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
            }

            delegate: MonsterCollectionItem {
            }

        }

        Button {
            text: "Back"
            x: parent.width * 0.1
            y: parent.height * 0.9
            onClicked: monstercollectionmenu.destroy()
        }
    }
}

