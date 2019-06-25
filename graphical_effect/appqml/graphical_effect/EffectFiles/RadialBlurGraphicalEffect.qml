
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "image.jpg"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    RadialBlur{
        anchors.fill: idImage
        source: idImage
        angle: thisControl.angleItem.value
        samples: thisControl.samplesItem.value
        verticalOffset:
            thisControl.verticalOffsetItem.value
        horizontalOffset:
            thisControl.horizontalOffsetItem.value
    }

    PrivateRadialBlurControl{
        id : thisControl
    }

}
