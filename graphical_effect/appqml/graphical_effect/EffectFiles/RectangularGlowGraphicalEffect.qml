
import QtQuick 2.9
import QtGraphicalEffects 1.12

/*begin:import*/
import theqml_the_debug.sstd.styled.app 1.0
/*end:import*/

PrivateBasic {
    id : idRoot

    RectangularGlow {
        id: idEffect
        anchors.fill: idRect
        glowRadius: 10
        spread: 0.2
        color: GlobalAppData.isDark? "white" : "black"
        cornerRadius: glowRadius + idRect.radius
    }

    Rectangle {
        id: idRect
        color: GlobalAppData.isDark?"black" : "white"
        width: parent.width * 0.8
        height: parent.height * 0.8
        anchors.centerIn: parent
        radius: 25
    }

}
