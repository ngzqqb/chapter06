﻿
import QtQuick 2.9
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ColumnLayout {
    width: parent.width
    anchors.bottom: parent.bottom

    RowLayout{
        Layout.fillWidth: true
        Label{
            Layout.minimumWidth: 64
            text:qsTr("gamma")
        }
        PrivateSliderControl{
            from : 0
            to : 16
            value: 0.5
            stepSize: 0.01
            Layout.fillWidth: true
            id : idGamma
        }
    }
    property alias gammaItem : idGamma

}
