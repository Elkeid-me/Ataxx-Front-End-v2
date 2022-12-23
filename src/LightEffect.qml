import QtQuick 2.3
import QtGraphicalEffects 1.15

Rectangle {
    id: rec
    width: 200
    height: 200
    radius: 50
    color: "#00000000"
    RadialGradient {
        anchors.fill: rec
        gradient: Gradient {
            GradientStop {
                position: 0.0
                color: "#a0ffffff"
            }
            GradientStop {
                position: 0.5
                color: "#00ffffff"
            }
        }
    }
}
