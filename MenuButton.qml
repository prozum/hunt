import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    property alias text: buttonText.text
    property string link
    width: img.width
    height: img.height

    Image {
        id: img
        source: "gfx/button.png"
        width: root.width*0.5
        fillMode: Image.PreserveAspectFit
    }

    Glow {
        id: glow
        source: img
        anchors.fill: img
        color: "yellow"
        samples: 16
        enabled: false
    }

    FontLoader { id: huntFont; source: "gfx/font.ttf" }
    Text {
        id: buttonText
        anchors.centerIn: parent
        font.family: huntFont.name
        font.pointSize: 24
        color: "yellow"
    }

    MouseArea {
        anchors.fill: parent
        hoverEnabled: true
        onEntered: {
            console.log("Enter");
            glow.radius = 10
            parent.opacity = 0.95
        }
        onExited: {
            console.log("Exit");
            glow.radius = 0
            parent.opacity = 1
        }
        onClicked: {
            var component = Qt.createComponent(link);
            if(component.status == Component.Ready)
            {
                component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
            }
        }
    }

}

