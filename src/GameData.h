#ifndef GAME_DATA_H
#define GAME_DATA_H
#include "CellData.h"
#include <QObject>
#include <cstddef>

enum class GameState
{
    white_moving,
    black_moving,
    white_win,
    black_win,
    draw
};

class GameData : public QObject
{
    Q_OBJECT

public:
    Q_PROPERTY(int seconds READ get_seconds NOTIFY seconds_changed);
    Q_PROPERTY(int minutes READ get_minutes NOTIFY minutes_changed);
    Q_PROPERTY(int steps READ get_steps NOTIFY steps_changed);

    Q_PROPERTY(int game_state READ get_game_state_for_qml NOTIFY game_state_changed);

    Q_PROPERTY(int enable_timer READ get_enable_timer NOTIFY enable_timer_changed);

    Q_INVOKABLE void clock();
    Q_INVOKABLE void new_game();
    Q_INVOKABLE void clean();

    Q_INVOKABLE void click(int row, int column);
    Q_INVOKABLE void save();
    Q_INVOKABLE void load();

    CellData *get_cell_data_ptr(int index);
    int get_game_state_for_qml() const;
    int get_steps() const;
    int get_seconds() const;
    int get_minutes() const;
    bool get_enable_timer() const;

signals:
    void game_state_changed();
    void seconds_changed();
    void minutes_changed();
    void steps_changed();
    void enable_timer_changed();

private:
    void set_enable_timer(bool val);
    void set_game_state(GameState state);
    void set_start(int row, int column);
    void clean_start();
    void move(int start_row, int start_column, int destination_row, int destination_column, int Chebyshev_distance);
    void check_win();

    bool can_move(int row, int column) const;
    void set_cell_state(int row, int column, CellState state);

    CellData m_cell_data[7][7];
    GameState m_game_state;

    int m_start_row, m_start_column;
    int m_steps;
    int m_seconds;

    bool m_enable_timer;
};
#endif // GAME_DATA_H
