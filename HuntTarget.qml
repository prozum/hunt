import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: hunttarget
    Rectangle {
        anchors.fill: parent

        Text {
            id: targetname
            text: qsTr("<UNKNOWN MOSTER>")
            font.pointSize: 18
            anchors.horizontalCenter: parent.horizontalCenter
            y: parent.height * 0.03
        }

        Image {
            id: targetimage
            source: "gfx/qmark.png"
            x: parent.width * 0.3
            y: parent.height * 0.2
            width: parent.width * 0.4
            height: parent.height * 0.4
        }

        Text {
            id: targetrule
            text: "Rules: Nearby, will try to\n escape when seen"
            x: parent.width * 0.1
            y: parent.height * 0.7
        }

        Button {
            id: backbutton
            text: "Back"
            x: parent.width * 0.1
            y: parent.height * 0.9
            onClicked: hunttarget.destroy()
        }

        Button {
            id: huntbutton
            text: "Hunt"
            x: parent.width * 0.7
            y: parent.height * 0.9
            onClicked: {
                var component = Qt.createComponent("HuntScreen.qml");
                console.log(component.errorString());
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }
    }

}

