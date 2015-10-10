import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Window {
    id: root
    visible: true
    width: 360
    height: 500


    ShaderEffectSource {
        id: background
        smooth: true
        sourceItem: Image { source: "gfx/background.png"; smooth: true }
        wrapMode: ShaderEffectSource.Repeat
        mipmap: true
    }

    ShaderEffect {
        anchors.fill: parent
        property variant b: background
        property real time

        NumberAnimation on time {from: 0; to: Math.PI * 2; duration: 10000; loops:Animation.Infinite; running:true}
        fragmentShader: "
            varying highp vec2 qt_TexCoord0;
            uniform sampler2D b;
            uniform float time;
            void main(void)
            {
                vec2 p = -1.0 + 2.0 * qt_TexCoord0;
                vec2 uv;
                float an = time;
                float can = cos(an);
                float san = sin(an);
                float x = p.x*can-p.y*san;
                float y = p.x*san+p.y*can;
                float recipabsy = 0.5/abs(y);
                uv.x = 1.0*x*recipabsy;
                uv.y = 1.0*time + 1.0*recipabsy;
                lowp vec4 wallcol = texture2D(b,uv);
                gl_FragColor = vec4(wallcol.xyz * y*y, y*y);
            }"
    }

    Logo {
        source: "gfx/logo.png"
        width: root.width * 0.9
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Column {
        anchors.centerIn: parent
        spacing: 26
        Button {
            text: "GO HUNTING"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var component = Qt.createComponent("RarityMenu.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }

        Button {
            text: "MONSTER COLLECTION"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var component = Qt.createComponent("MonsterCollectionMenu.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }

        Button {
            text: "VERSUS"
            anchors.horizontalCenter: parent.horizontalCenter
            onClicked: {
                var component = Qt.createComponent("Facebook.qml");
                if(component.status == Component.Ready)
                {
                    component.createObject(root, {x: 0, y: 0, width: root.width, height: root.height})
                }
            }
        }
    }

    Row {
        spacing: root.width - 128
        anchors.horizontalCenter: parent.horizontalCenter
        y: root.height*0.9

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

