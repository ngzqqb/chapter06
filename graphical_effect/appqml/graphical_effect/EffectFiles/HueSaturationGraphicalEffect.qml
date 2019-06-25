
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
        id : idImage
    }

    HueSaturation{
        anchors.fill: idImage
        source: idImage
        hue : thisControl.hueItem.value
        lightness: thisControl.lightnessItem.value
        saturation: thisControl.saturationItem.value
    }

    PrivateHuesaturationControl{
        id : thisControl
    }

}
