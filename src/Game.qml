import QtQuick 2.3
import QtGraphicalEffects 1.15

Item {
    width:945
    height:643
    Grid {
        x: 60
        y: 60
        width: 522
        height: 522
        rows: 7
        columns: 7
        spacing: 3
        Cell { state: cell_data_0.state; cell_row: 0; cell_column: 0 }
        Cell { state: cell_data_1.state; cell_row: 0; cell_column: 1 }
        Cell { state: cell_data_2.state; cell_row: 0; cell_column: 2 }
        Cell { state: cell_data_3.state; cell_row: 0; cell_column: 3 }
        Cell { state: cell_data_4.state; cell_row: 0; cell_column: 4 }
        Cell { state: cell_data_5.state; cell_row: 0; cell_column: 5 }
        Cell { state: cell_data_6.state; cell_row: 0; cell_column: 6 }
        Cell { state: cell_data_7.state; cell_row: 1; cell_column: 0 }
        Cell { state: cell_data_8.state; cell_row: 1; cell_column: 1 }
        Cell { state: cell_data_9.state; cell_row: 1; cell_column: 2 }
        Cell { state: cell_data_10.state; cell_row: 1; cell_column: 3 }
        Cell { state: cell_data_11.state; cell_row: 1; cell_column: 4 }
        Cell { state: cell_data_12.state; cell_row: 1; cell_column: 5 }
        Cell { state: cell_data_13.state; cell_row: 1; cell_column: 6 }
        Cell { state: cell_data_14.state; cell_row: 2; cell_column: 0 }
        Cell { state: cell_data_15.state; cell_row: 2; cell_column: 1 }
        Cell { state: cell_data_16.state; cell_row: 2; cell_column: 2 }
        Cell { state: cell_data_17.state; cell_row: 2; cell_column: 3 }
        Cell { state: cell_data_18.state; cell_row: 2; cell_column: 4 }
        Cell { state: cell_data_19.state; cell_row: 2; cell_column: 5 }
        Cell { state: cell_data_20.state; cell_row: 2; cell_column: 6 }
        Cell { state: cell_data_21.state; cell_row: 3; cell_column: 0 }
        Cell { state: cell_data_22.state; cell_row: 3; cell_column: 1 }
        Cell { state: cell_data_23.state; cell_row: 3; cell_column: 2 }
        Cell { state: cell_data_24.state; cell_row: 3; cell_column: 3 }
        Cell { state: cell_data_25.state; cell_row: 3; cell_column: 4 }
        Cell { state: cell_data_26.state; cell_row: 3; cell_column: 5 }
        Cell { state: cell_data_27.state; cell_row: 3; cell_column: 6 }
        Cell { state: cell_data_28.state; cell_row: 4; cell_column: 0 }
        Cell { state: cell_data_29.state; cell_row: 4; cell_column: 1 }
        Cell { state: cell_data_30.state; cell_row: 4; cell_column: 2 }
        Cell { state: cell_data_31.state; cell_row: 4; cell_column: 3 }
        Cell { state: cell_data_32.state; cell_row: 4; cell_column: 4 }
        Cell { state: cell_data_33.state; cell_row: 4; cell_column: 5 }
        Cell { state: cell_data_34.state; cell_row: 4; cell_column: 6 }
        Cell { state: cell_data_35.state; cell_row: 5; cell_column: 0 }
        Cell { state: cell_data_36.state; cell_row: 5; cell_column: 1 }
        Cell { state: cell_data_37.state; cell_row: 5; cell_column: 2 }
        Cell { state: cell_data_38.state; cell_row: 5; cell_column: 3 }
        Cell { state: cell_data_39.state; cell_row: 5; cell_column: 4 }
        Cell { state: cell_data_40.state; cell_row: 5; cell_column: 5 }
        Cell { state: cell_data_41.state; cell_row: 5; cell_column: 6 }
        Cell { state: cell_data_42.state; cell_row: 6; cell_column: 0 }
        Cell { state: cell_data_43.state; cell_row: 6; cell_column: 1 }
        Cell { state: cell_data_44.state; cell_row: 6; cell_column: 2 }
        Cell { state: cell_data_45.state; cell_row: 6; cell_column: 3 }
        Cell { state: cell_data_46.state; cell_row: 6; cell_column: 4 }
        Cell { state: cell_data_47.state; cell_row: 6; cell_column: 5 }
        Cell { state: cell_data_48.state; cell_row: 6; cell_column: 6 }
        layer.enabled: true
        layer.effect: DropShadow {
            transparentBorder: true
            samples: 17
            horizontalOffset: 0
            verticalOffset: 0
            radius: 12
            spread: 0
            color: "#40000000"
        }
    }
    Text {
        x: 650
        y: 80
        width: 126
        height: 32
        color: "#595959"
        text: game_data.minutes + " 分 " + game_data.seconds + " 秒";
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 20
        font.family: "Microsoft YaHei UI Light"
        PropertyAnimation on opacity {
            from: 0
            to: 1
            duration: 250
        }
    }
    Text {
        x: 650
        y: 125
        width: 126
        height: 32
        color: "#595959"
        text: {
            if (game_data.game_state === 0)
                return "白方行棋"
            if (game_data.game_state === 1)
                return "黑方行棋"
        }
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 20
        font.family: "Microsoft YaHei UI Light"
        PropertyAnimation on opacity {
            from: 0
            to: 1
            duration: 250
        }
    }
    Text {
        x: 650
        y: 170
        width: 126
        height: 32
        color: "#595959"
        text: game_data.steps + " 步"
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 20
        font.family: "Microsoft YaHei UI Light"
        PropertyAnimation on opacity {
            from: 0
            to: 1
            duration: 250
        }
    }
    TextButton {
        x: 633
        y: 278
        enabled: game_data.game_state < 2
        text: "返回"
        width: 265
        height: 38
        onClicked: {
            game_data.clean()
            center_blur.state = "visible"
            full_blur.state = "hidden"
            window_loader.source = "MainMenu.qml"
        }
    }
    TextButton {
        x: 633
        y: 411
        enabled: game_data.game_state < 2
        text: "保存"
        width: 265
        height: 38
        onClicked: game_data.save()
    }
    TextButton {
        x: 633
        y: 544
        enabled: game_data.game_state < 2
        text: "退出"
        width: 265
        height: 38
        onClicked: Qt.exit(0)
    }
    Timer {
        interval: 1000
        running: game_data.enable_timer
        repeat: true
        onTriggered: game_data.clock()
    }
    Rectangle {
        visible: game_data.game_state === 2 || game_data.game_state === 3 || game_data.game_state === 4
        opacity: {
            if (game_data.game_state === 2 || game_data.game_state === 3 || game_data.game_state === 4)
                return 1
            else
                return 0
        }
        color: "#66000000"
        width: 945
        height: 300
        y: 171
        Text {
            y: 100
            width: 126
            height: 32
            color: "#ffffff"
            text: {
                switch(game_data.game_state) {
                case 2:
                    return "游戏结束，白方胜利"
                case 3:
                    return "游戏结束，黑方胜利"
                case 4:
                    return "平局"
                }
            }
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: 25
            font.family: "Microsoft YaHei UI Light"
        }
        TextButton {
            anchors.horizontalCenter: parent.horizontalCenter
            y: 200
            text: "返回"
            width: 265
            height: 38
            onClicked: {
                game_data.clean();
                center_blur.state = "visible";
                full_blur.state = "hidden";
                window_loader.source = "MainMenu.qml";
            }
        }
        Behavior on opacity {
            NumberAnimation { duration: 250 }
        }
    }
}
