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
import QtGraphicalEffects 1.15

Item {
    property Item target
    property bool withShadow: false
    states: [
        State {
            name: "visible"
            PropertyChanges {
                target: blur
                opacity: 1
            }
            PropertyChanges {
                target: blurMask
                opacity: 1
            }
        },
        State {
            name: "hidden"
            PropertyChanges {
                target: blur
                opacity: 0
            }
            PropertyChanges {
                target: blurMask
                opacity: 0
            }
        }
    ]
    transitions: Transition {
        ParallelAnimation {
            NumberAnimation {
                target: blur
                property: "opacity"
                duration: 250
            }
            NumberAnimation {
                target: blurMask
                property: "opacity"
                duration: 250
            }
        }
    }
    ShaderEffectSource {
        id: blurMask
        sourceItem: parent.target
        width: parent.width
        height: parent.height
        sourceRect: Qt.rect(parent.x, parent.y, width, height)
    }
    FastBlur {
        id: blur
        cached: false
        height: parent.height
        width: parent.width
        source: blurMask
        radius: 128
        layer.enabled: withShadow
        layer.effect: DropShadow {
            id: s
            transparentBorder: true
            samples: 17
            horizontalOffset: 0
            verticalOffset: 0
            radius: 12
            spread: 0
            color: "#59000000"
        }
    }
}
