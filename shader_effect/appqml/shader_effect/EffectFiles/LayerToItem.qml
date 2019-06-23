import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Shapes 1.13

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    Item{

        x : 5
        y : 5
        width: parent.width - 10
        height: parent.height - 10

        layer{
            enabled: true
            effect: ShaderEffect {
                fragmentShader: "
/*片段着色器*/
#version 460

uniform sampler2D source ;
uniform float qt_Opacity ;
in vec2 qt_TexCoord0     ;
out vec4 fragColor;
void main() {
    lowp vec4 p = texture2D(source, qt_TexCoord0);
    fragColor = vec4(qt_TexCoord0.x, qt_TexCoord0.y, 0.5, 1) * qt_Opacity;
}"
            }
        }

    }

}



