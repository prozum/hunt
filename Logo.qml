import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: root
    property alias source: img.source

    Image {
        id: img
        width: root.width
        anchors.horizontalCenter: root.horizontalCenter
    }

    Glow {
        id: glowAnim
        anchors.fill: img
        source: img
        samples: 32
        spread: 0.8
        color: "red"
    }

    SequentialAnimation {
        NumberAnimation {
            target: glowAnim
            property: "radius"
            from: 5
            to: 20
            duration: 1000
            easing.type: Easing.InOutSine
        }
        NumberAnimation {
            target: glowAnim
            property: "radius"
            from: 20
            to: 5
            duration: 1000
            easing.type: Easing.InOutSine
        }
        loops: Animation.Infinite
        running: true
    }
}

