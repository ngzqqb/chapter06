import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Shapes 1.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic{

    Rectangle{

        x : 5
        y : 5
        width: parent.width - 10
        height: parent.height -10
        id : idRectangle
        visible: false

    }

    ShaderEffect{

        anchors.fill: idRectangle

        fragmentShader:"
/*片段着色器*/
#version 460

in vec2  qt_TexCoord0/*纹理坐标*/  ;
out vec4 fragColor   /*输出值*/    ;

uniform float qt_Opacity/*透明度*/ ;

void main() {
vec4 varColor  = vec4( qt_TexCoord0.x ,  qt_TexCoord0.y , 0.5 , 1);
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
    qt_TexCoord0 = gl_Position.xy*0.5 + 0.5 ;
}

"
    }


}







