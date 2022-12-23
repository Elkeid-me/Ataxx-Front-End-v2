#include "CellData.h"

int CellData::get_state_for_qml() const { return static_cast<int>(m_state); }

CellState CellData::get_state() const { return m_state; }

void CellData::set_state(CellState state)
{
    if (m_state == state)
        return;
    m_state = state;
    emit state_changed();
}
