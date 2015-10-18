import QtQuick 2.5
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtGraphicalEffects 1.0

Window {
    id: root
    visible: true
    width: 360
    height: 500
    color: "black"
    property string state: loader.state



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
                float can = cos(time);
                float san = sin(time);
                float x = p.x*can-p.y*san;
                float y = p.x*san+p.y*can;
                float recipabsy = 0.5/abs(y);
                uv.x = 1.0*x*recipabsy;
                uv.y = 1.0*time + 1.0*recipabsy;
                lowp vec4 wallcol = texture2D(b,uv);
                gl_FragColor = vec4(wallcol.xyz * y*y, y*y);
            }"
    }

    Loader {
        id: loader
        state: "menu"
        anchors.fill: parent

        states: [
            State {
                name: "menu"
                PropertyChanges { target: loader; source: "Menu.qml"}
            },
            State {
                name: "hunt"
                PropertyChanges { target: loader; source: "Menu.qml"}
            }
        ]
    }
}

