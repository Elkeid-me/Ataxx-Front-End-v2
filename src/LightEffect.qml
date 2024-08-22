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
