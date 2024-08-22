// Copyright (C) 2021-2024 Elkeid-me
//
// This file is part of Ataxx Frontend.
//
// Ataxx Frontend is free software: you can redistribute it and/or modify
// it under the terms of the GNU General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// Ataxx Frontend is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
// GNU General Public License for more details.
//
// You should have received a copy of the GNU General Public License
// along with Ataxx Frontend.  If not, see <http://www.gnu.org/licenses/>.

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
