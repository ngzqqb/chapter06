
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "tree.jpg"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "tree.png"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImageMask
    }

     ThresholdMask{
         anchors.fill: idImage
         source: idImage
         maskSource: idImageMask
         spread: thisControl.spreadItem.value
         threshold: thisControl.thresholdItem.value
     }

     PrivateThresholdMaskControl{
         id : thisControl
     }

}
