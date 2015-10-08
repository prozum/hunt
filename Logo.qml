import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    property alias source: img.source

    Image {
        id: img
        width: root.width
    }

    Glow {
        id: glowAnim
        anchors.fill: img
        samples: 16
        color: "red"
        source: img
    }

    SequentialAnimation {
        NumberAnimation {
            target: glowAnim
            property: "radius"
            from: 0
            to: 20
            duration: 1000
            easing.type: Easing.InOutSine
        }
        NumberAnimation {
            target: glowAnim
            property: "radius"
            from: 20
            to: 0
            duration: 1000
            easing.type: Easing.InOutSine
        }
        loops: Animation.Infinite
        running: true
    }
}

