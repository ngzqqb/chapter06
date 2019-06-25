
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot
    
    RectangularGlow {
        id: idEffect
        anchors.fill: idRect
        glowRadius: 10
        spread: 0.2
        color: "white"
        cornerRadius: glowRadius + idRect.radius
    }

    Rectangle {
        id: idRect
        color: "black"
        width: parent.width * 0.8
        height: parent.height * 0.8
        anchors.centerIn: parent
        radius: 25
    }

}
