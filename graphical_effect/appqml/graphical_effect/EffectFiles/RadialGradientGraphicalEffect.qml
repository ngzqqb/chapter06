
import QtQuick 2.9
import QtGraphicalEffects 1.12

PrivateBasic {
    id : idRoot

    RadialGradient {
        anchors.fill: parent
        gradient: Gradient {
            GradientStop { position: 0.0; color: "white" }
            GradientStop { position: 0.5; color: "black" }
        }
    }

}
