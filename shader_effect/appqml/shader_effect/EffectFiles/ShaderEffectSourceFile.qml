import QtQuick 2.13
import QtQuick.Controls 2.13
import QtQuick.Shapes 1.13

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    Text {
        id : idText
        visible: false
        text: qsTr("Hellow World!")
        font.pixelSize: parent.height * 0.8
        anchors.centerIn: parent
    }

    ShaderEffectSource{
         id : idEffectSource
         sourceItem:idText
         anchors.fill: parent
         visible: false
    }

    ShaderEffect{

        anchors.fill: idEffectSource
        property var sourceImage: idEffectSource

        fragmentShader:"
/*片段着色器*/
#version 460

in vec2  qt_TexCoord0/*纹理坐标*/  ;
out vec4 fragColor   /*输出值*/    ;

uniform sampler2D sourceImage /*源图片*/ ;
uniform float qt_Opacity/*透明度*/ ;

void main() {
    vec4 varColor = texture2D(sourceImage, qt_TexCoord0) ;
    varColor = varColor.a > 0.5 ? vec4(qt_TexCoord0.x,0,0,1) : vec4(0,0,0,0);
    fragColor = varColor * qt_Opacity;
}

"
        vertexShader :"
/*顶点着色器*/
#version 460

in vec4 qt_Vertex/*输入点坐标*/    ;
out vec2 qt_TexCoord0/*纹理坐标*/  ;

uniform mat4 qt_Matrix/*投影矩阵*/ ;

void main() {
    gl_Position = qt_Matrix * qt_Vertex;
    vec2 varCoord = gl_Position.xy*0.5 + 0.5;
    varCoord.y = 1 - varCoord.y;
    qt_TexCoord0 =  varCoord;
}

"
    }

}
