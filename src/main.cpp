#include "GameData.h"
#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include <ranges>

void register_to_engine(QQmlApplicationEngine &engine, GameData &game_data)
{
    engine.rootContext()->setContextProperty("game_data", &game_data);
    for (int i : std::views::iota(0, 49))
        engine.rootContext()->setContextProperty(QString{"cell_data_%1"}.arg(i), game_data.get_cell_data_ptr(i));
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
