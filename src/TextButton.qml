import QtQuick 2.3
import QtQuick.Controls 2.2
import QtGraphicalEffects 1.15

Rectangle {
    property alias text: main_text.text
    property alias enabled: area.enabled
    signal clicked
    color: "#b3ffffff"
    border.width: area.containsMouse ? 2 : 0
    border.color: "#ffffff"
    PropertyAnimation on opacity {
        from: 0
        to: 1
        duration: 250
    }
    layer.enabled: true
    layer.effect: DropShadow {
        transparentBorder: true
        samples: 17
        horizontalOffset: 0
        verticalOffset: 0
        radius: 12
        spread: 0
        color: "#59000000"
    }
    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: area.enabled
        onClicked: parent.clicked()
        clip: true
        LightEffect {
            x: area.mouseX - 100
            y: area.mouseY - 100
            visible: area.containsMouse
        }
    }
    Text {
        id: main_text
        anchors.centerIn: parent
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
        font.family: "Microsoft YaHei UI Light"
        horizontalAlignment: Text.AlignHCenter
        width: parent.width
        color: "#595959"
    }
}
