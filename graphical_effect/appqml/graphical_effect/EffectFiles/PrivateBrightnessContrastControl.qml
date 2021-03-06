﻿
import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

ColumnLayout {
    width: parent.width
    anchors.bottom: parent.bottom

    RowLayout{
        Layout.fillWidth: true
        Label{
            Layout.minimumWidth: 64
            text : qsTr("brightness")
        }
        PrivateSliderControl{
            from : -1
            to : 1
            stepSize: 0.01
            value: 0
            Layout.fillWidth: true
            id : idBrightness
        }
    }

    RowLayout{
        Layout.fillWidth: true
        Label{
            Layout.minimumWidth: 64
            text : qsTr("contrast")
        }
        PrivateSliderControl{
            from : -1
            to : 1
            value: 0
            stepSize: 0.01
            Layout.fillWidth: true
            id : idContrast
        }
    }

    property alias brightnessItem : idBrightness
    property alias contrastItem: idContrast

}
