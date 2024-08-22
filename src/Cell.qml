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

Rectangle {
    id: root
    width: 72
    height: 72
    property int cell_row
    property int cell_column
    property int state
    MouseArea {
        id: area
        anchors.fill: parent
        hoverEnabled: true
        onClicked: game_data.click(cell_row, cell_column)
        clip: true
        LightEffect {
            x: area.mouseX - 100
            y: area.mouseY - 100
            visible: area.containsMouse
        }
    }
    PropertyAnimation on opacity {
        from: 0
        to: 1
        duration: 250
    }
    Image {
        id: white_img
        sourceSize: Qt.size(64, 64)
        x: 4
        y: 4
        width: 64
        height: 64
        source: "qrc:/img/White.png"
        opacity: 0
    }
    Image {
        id: black_img
        sourceSize: Qt.size(64, 64)
        x: 4
        y: 4
        width: 64
        height: 64
        source: "qrc:/img/Black.png"
        opacity: 0
    }
    states: [
        State {
            name: "empty"
            when: state === 0
            PropertyChanges {
                target: white_img
                opacity: 0
            }
            PropertyChanges {
                target: black_img
                opacity: 0
            }
            PropertyChanges {
                target: root.border
                color: "#ffffff"
            }
            PropertyChanges {
                target: root
                color: "#aaffffff"
            }
        },
        State {
            name: "white"
            when: state === 1
            PropertyChanges {
                target: white_img
                opacity: 1
            }
            PropertyChanges {
                target: black_img
                opacity: 0
            }
            PropertyChanges {
                target: root.border
                color: "#ffffff"
            }
            PropertyChanges {
                target: root
                color: "#aaffffff"
            }
        },
        State {
            name: "black"
            when: state === 2
            PropertyChanges {
                target: white_img
                opacity: 0
            }
            PropertyChanges {
                target: black_img
                opacity: 1
            }
            PropertyChanges {
                target: root.border
                color: "#ffffff"
            }
            PropertyChanges {
                target: root
                color: "#aaffffff"
            }
        },
        State {
            name: "white_selected"
            when: state === 3
            PropertyChanges {
                target: white_img
                opacity: 1
            }
            PropertyChanges {
                target: black_img
                opacity: 0
            }
            PropertyChanges {
                target: root.border
                color: "#ffffff"
            }
            PropertyChanges {
                target: root
                color: "#eeffffff"
            }
        },
        State {
            name: "black_selected"
            when: state === 4
            PropertyChanges {
                target: white_img
                opacity: 0
            }
            PropertyChanges {
                target: black_img
                opacity: 1
            }
            PropertyChanges {
                target: root.border
                color: "#ffffff"
            }
            PropertyChanges {
                target: root
                color: "#eeffffff"
            }
        },
        State {
            name: "distance_1"
            when: state === 5
            PropertyChanges {
                target: white_img
                opacity: 0
            }
            PropertyChanges {
                target: black_img
                opacity: 0
            }
            PropertyChanges {
                target: root.border
                color: "#bdecd2"
            }
            PropertyChanges {
                target: root
                color: "#ee94e0b6"
            }
        },
        State {
            name: "distance_2"
            when: state === 6
            PropertyChanges {
                target: white_img
                opacity: 0
            }
            PropertyChanges {
                target: black_img
                opacity: 0
            }
            PropertyChanges {
                target: root.border
                color: "#efc5ba"
            }
            PropertyChanges {
                target: root
                color: "#eee69f8e"
            }
        }
    ]
    transitions: Transition {
        ColorAnimation {
            target: root.color
            duration: 200
        }
        ColorAnimation {
            target: root.border.color
            duration: 200
        }
        NumberAnimation {
            target: white_img
            properties: "opacity"
            duration: 250
        }
        NumberAnimation {
            target: black_img
            properties: "opacity"
            duration: 250
        }
    }
}
