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
        color: "#707070"
        text: "同化棋 2.0"
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 25
        font.family: "Microsoft YaHei UI Light"
    }
    Text {
        y: 225
        width: 126
        height: 32
        color: "#595959"
        text: "计算概论 A 大作业\n\n设计：Elkeid-me\n灵感：Microsoft Fluent Design\n背景为 KDE Plasma 默认桌面\n字体为 Microsoft YaHei UI Light\n\n基于 GPLv3 协议开源"
        PropertyAnimation on opacity {
            from: 0
            to: 1
            duration: 250
        }
        anchors.horizontalCenter: parent.horizontalCenter
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pointSize: 14
        font.family: "Microsoft YaHei UI Light"
    }
    TextButton {
        anchors.horizontalCenter: parent.horizontalCenter
        y: 470
        text: "返回"
        anchors.horizontalCenterOffset: 0
        width: 265
        height: 38
        onClicked: {
            center_blur.state = "visible";
            full_blur.state = "hidden";
            window_loader.source = "qrc:/MainMenu.qml";
        }
    }
}
