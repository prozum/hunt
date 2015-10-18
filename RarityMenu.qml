import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: raritymenu

    Column {
        anchors.centerIn: parent
        spacing: 32
        CustomButton {
            text: "Common"
            link: "HuntTarget.qml"
        }

        CustomButton {
            text: "Rare"
            link: "HuntTarget.qml"
        }

        CustomButton {
            text: "Legendary"
            link: "HuntTarget.qml"
        }
    }

//    Button {
//        text: "Common"
//        x: parent.width * 0.1
//        y: parent.height * 0.1
//        width: parent.width * 0.8
//        onClicked: {
//            var component = Qt.createComponent("HuntTarget.qml");
//            if(component.status == Component.Ready)
//            {
//                component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
//            }
//        }
//    }

//    Button {
//        text: "Rare"
//        x: parent.width * 0.1
//        y: parent.height * 0.3
//        width: parent.width * 0.8
//        onClicked: {
//            var component = Qt.createComponent("HuntTarget.qml");
//            if(component.status == Component.Ready)
//            {
//                component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
//            }
//        }
//    }

//    Button {
//        text: "Legendary"
//        x: parent.width * 0.1
//        y: parent.height * 0.5
//        width: parent.width * 0.8
//        onClicked: {
//            var component = Qt.createComponent("HuntTarget.qml");
//            if(component.status == Component.Ready)
//            {
//                component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
//            }
//        }
//    }

    CustomButton {
        text: "Back"
        link: "Menu.qml"
    }

    Button {
        text: "Back"
        x: parent.width * 0.1
        y: parent.height * 0.9
        onClicked: root.scene = "Menu.qml"
    }

}

