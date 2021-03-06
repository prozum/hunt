import QtQuick 2.0

Item {
    width: 100
    height: 100


    Column {
        anchors.horizontalCenter: parent.horizontalCenter

        Image {
            id: idIcon
            y: 20;
            fillMode: Image.PreserveAspectFit
            source: icon
            width: 75
            height: 75
        }

        Text {
            text: name;
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            if(parent.GridView.view.currentIndex == index)
            {
                var component = Qt.createComponent(infopage);
                console.log(component.errorString());
                console.log(name);
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height, name: name, icon: icon})
                    console.log("Created")
                }
            }
            parent.GridView.view.currentIndex = index
        }
    }
}

