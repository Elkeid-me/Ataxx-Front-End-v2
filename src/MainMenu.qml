import QtQuick 2.3

Item {
    width: 945
    height: 643
    Text {
        y: 84
        width: 126
        height: 32
        color: "#595959"
        text: "同化棋"
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 25
        font.family: "Microsoft YaHei UI Light"
        PropertyAnimation on opacity {
            from: 0
            to: 1
            duration: 250
        }
    }
    TextButton {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 200
        text: "新游戏"
        width: 265
        height: 38
        onClicked: {
            center_blur.state = "hidden"
            full_blur.state = "visible"
            game_data.new_game()
            window_loader.source = "qrc:/Game.qml"
        }
    }
    TextButton {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 335
        text: "加载存档"
        width: 265
        height: 38
        onClicked: {
            center_blur.state = "hidden"
            full_blur.state = "visible"
            game_data.load()
            window_loader.source = "qrc:/Game.qml"
        }
    }
    TextButton {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 470
        text: "关于"
        anchors.horizontalCenterOffset: 0
        width: 265
        height: 38
        onClicked: {
            center_blur.state = "hidden"
            full_blur.state = "visible"
            window_loader.source ="qrc:/About.qml"
        }
    }
}
