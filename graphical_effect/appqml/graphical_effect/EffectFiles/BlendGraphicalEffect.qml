
import QtQuick 2.12
import QtGraphicalEffects 1.12

PrivateBasic{

    Image{
        anchors.fill: idBear;
        source: "grass.jpg"
        fillMode: Image.Tile
        id : idGrass
        visible: false
    }

    Image{
        anchors.centerIn: parent;
        source: "bear.png"
        fillMode: Image.Stretch
        id : idBear
        visible: false
    }

    Blend{
        source: idGrass
        foregroundSource: idBear
        mode: idBlendControl.blendModeComboBox.currentText
        anchors.centerIn: parent;
        width: idBear.width
        height: idBear.height
    }

    PrivateBlendControl {
        id : idBlendControl
        width : 200
    }

}

/*endl_input_of_latex_for_clanguage_lick*/

//混合
// 项目移植自 ：
// https://github.com/ngzHappy/QtQmlBook/tree/master/chapter06/blend_effect
