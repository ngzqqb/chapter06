
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

    ConicalGradient {
        anchors.fill: idImage
        source: idImage
        angle: 0.0
        gradient: Gradient {
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 1.0; color: "green" }
        }
        visible: false
        id : idRedGreenDisplacement
    }

    Displace{
        anchors.fill: idImage
        source: idImage
        displacementSource: idRedGreenDisplacement
        displacement : thisControl.displacementItem.value
    }

    PrivateDisplaceControl{
        id : thisControl
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
//移位
