
/*coloroverlay_effect/main.qml*/
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {

    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "snake"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    ColorOverlay{
        anchors.fill: idImage
        source: idImage
        color: idColoroverlayControl.applyColor
    }

    PrivateColoroverlayControl{
        id : idColoroverlayControl
    }

}

/*endl_input_of_latex_for_clanguage_lick*/

//
// 项目移植自 ：
// https://github.com/ngzHappy/QtQmlBook/tree/master/chapter06/
