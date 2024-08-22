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
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <ranges>

void register_to_engine(QQmlApplicationEngine &engine, GameData &game_data)
{
    engine.rootContext()->setContextProperty("game_data", &game_data);
    for (int i : std::views::iota(0, 49))
        engine.rootContext()->setContextProperty(QStringLiteral("cell_data_%1").arg(i), game_data.get_cell_data_ptr(i));
}

int main(int argc, char *argv[])
{
    GameData game_data;
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    register_to_engine(engine, game_data);
    return app.exec();
}
