
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

    FastBlur{
        anchors.fill: idImage
        source: idImage
        radius: thisControl.radiusItem.value
    }

    PrivateFastBlurControl{
        id : thisControl
    }

}
