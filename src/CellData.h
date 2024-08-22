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

#ifndef CELL_DATA_H
#define CELL_DATA_H
#include <QObject>

enum class CellState
{
    empty,
    white,
    black,
    white_selected,
    black_selected,
    distance_1,
    distance_2
};

class CellData : public QObject
{
    Q_OBJECT
public:
    Q_PROPERTY(int state READ get_state_for_qml NOTIFY state_changed);
    int get_state_for_qml() const;
    CellState get_state() const;
    void set_state(CellState state);

signals:
    void state_changed();

private:
    CellState m_state;
};
#endif // CELL_DATA_H
