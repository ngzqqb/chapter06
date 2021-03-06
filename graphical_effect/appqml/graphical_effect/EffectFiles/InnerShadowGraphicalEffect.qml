﻿
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    Image{
        width: parent.width * 0.8;
        height: parent.height * 0.8;
        anchors.centerIn: parent
        source: "tree"
        visible: false
        fillMode: Image.PreserveAspectFit
        id : idImage
    }

    InnerShadow{
        anchors.fill: idImage
        source: idImage
        radius: 8
        samples: 16
        horizontalOffset: -3
        verticalOffset: 3
        color: Qt.rgba( 0.6,0.8,0.9,1 );
    }

}
