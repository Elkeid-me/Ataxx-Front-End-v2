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

#include "GameData.h"

Q_INVOKABLE void GameData::clock()
{
    m_seconds++;
    emit seconds_changed();
    emit minutes_changed();
}

CellData *GameData::get_cell_data_ptr(int index) { return reinterpret_cast<CellData *>(m_cell_data) + index; }

int GameData::get_game_state_for_qml() const { return static_cast<int>(m_game_state); }

int GameData::get_steps() const { return m_steps; }

int GameData::get_seconds() const { return m_seconds % 60; }

int GameData::get_minutes() const { return m_seconds / 60; }

bool GameData::get_enable_timer() const { return m_enable_timer; }

void GameData::set_cell_state(int row, int column, CellState state) { m_cell_data[row][column].set_state(state); }

void GameData::set_game_state(GameState state)
{
    if (m_game_state == state)
        return;
    m_game_state = state;
    emit game_state_changed();
}

void GameData::set_enable_timer(bool val)
{
    if (m_enable_timer == val)
        return;
    m_enable_timer = val;
    emit enable_timer_changed();
}
