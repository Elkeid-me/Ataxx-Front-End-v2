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
// along with Ataxx Frontend.  If not, see <http://www.gnu.org/licenses/>.import QtQuick 2.3

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
