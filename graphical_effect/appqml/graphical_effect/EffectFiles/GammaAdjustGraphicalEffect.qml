
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

    GammaAdjust{
        anchors.fill: idImage
        source: idImage
        gamma: idThisControl.gammaItem.value
    }

    PrivateGammaAdjustControl{
        id : idThisControl
    }

}

/*endl_input_of_latex_for_clanguage_lick*/
/*

https://bugreports.qt.io/browse/QTBUG-64775
https://codereview.qt-project.org/#/c/250594/
Q_INIT_RESOURCE(qtgraphicaleffectsshaders);

*/
