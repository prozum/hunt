import QtQuick 2.0

Item {
    width: 100
    height: 100


    Column {
        Image {
            id: idIcon
            y: 20;
            anchors.horizontalCenter: parent.horizontalCenter
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
                console.log(index);
                console.log(parent.GridView.view.currentIndex);
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

