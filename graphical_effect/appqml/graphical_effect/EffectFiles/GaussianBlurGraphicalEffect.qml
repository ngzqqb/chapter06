
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

    GaussianBlur{
        anchors.fill: idImage
        source: idImage
        radius: 8
        samples: 16
        deviation: idThisControl.deviationItem.value
    }

    PrivateGaussianBlurControl{
        id : idThisControl
    }

}
