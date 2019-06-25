
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "image"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idMask
    }

    LinearGradient{
        id : idSource
        anchors.fill: idMask
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "black" }
        }
        visible: false
    }

    OpacityMask{
        anchors.fill : idSource
        invert: true
        maskSource: idMask
        source: idSource
    }

}
