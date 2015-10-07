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
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
                ListElement {name: "#NAME"; icon: "gfx/qmark.png"; infopage: "MonsterCollectionInfo.qml"}
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
                    onClicked: {
                        if(parent.GridView.view.currentIndex == index)
                        {
                            console.log("Triggered");
                            var component = Qt.createComponent(infopage);
                            if(component.status == Component.Ready)
                            {
                                component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                                console.log("Created")
                            }
                        }
                        parent.GridView.view.currentIndex = index
                    }
                }
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

