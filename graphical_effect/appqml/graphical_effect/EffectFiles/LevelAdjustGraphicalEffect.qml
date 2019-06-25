
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "butterfly"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    /*将RGB反向，A不变*/
    LevelAdjust {
        anchors.fill: idImage
        source: idImage
        minimumOutput: Qt.rgba(1,1,1,0)
        maximumOutput: Qt.rgba(0,0,0,1)
    }

}
