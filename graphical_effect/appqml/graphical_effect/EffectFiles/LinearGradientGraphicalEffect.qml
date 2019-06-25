
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    LinearGradient {
        id : idEffect
        anchors.fill: parent
        start: Qt.point(parent.x, parent.y)
        end: Qt.point(parent.x+parent.width,
                      parent.y+parent.height)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 1.0; color: "black" }
        }
    }

}
