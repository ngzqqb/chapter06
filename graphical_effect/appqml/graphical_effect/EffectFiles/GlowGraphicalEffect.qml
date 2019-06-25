
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "bear"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    Glow{
        color: Qt.rgba(0.2,0.6,0.3,1)
        radius: 8
        samples: 16
        spread: idThisControl.spreadItem.value
        anchors.fill: idImage
        source: idImage
    }

    PrivateGlowControl{
        id : idThisControl
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
/*
there is a Qt bug ...
sometimes the application will crash
when use ToolTip ...
*/
