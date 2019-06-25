
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "tree.png"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idMask
    }

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "tree.jpg"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    MaskedBlur{
        source: idImage
        maskSource: idMask
        anchors.fill: idImage
        radius: idThisControl.radiusItem.value
        samples: idThisControl.samplesItem.value
    }

    PrivateMaskedBlurControl{
        id : idThisControl
    }

}
