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
