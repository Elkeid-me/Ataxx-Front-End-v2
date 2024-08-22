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
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    id: root
    visible: true
    minimumWidth: 945
    minimumHeight: 643
    maximumWidth: 945
    maximumHeight: 643
    width: 945
    height: 643
    title: "Ataxx Front End"
    Image {
        id: background
        source: "qrc:/img/Background.png"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        sourceSize: Qt.size(945, 643)
        cache: false
    }
    BlurRectangle {
        id: full_blur
        state: "hidden"
        width: 945
        height: root.height
        target: background
        anchors.horizontalCenter: parent.horizontalCenter
    }
    BlurRectangle {
        id: center_blur
        state: "visible"
        withShadow: true
        width: 400
        height: root.height
        target: background
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Loader {
        id:window_loader
        anchors.centerIn: parent
    }
    Component.onCompleted: window_loader.source = "qrc:/MainMenu.qml"
}
