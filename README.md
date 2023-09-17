# 同化棋

## 简介

北京大学 2021 年计算概论 A 大作业。

本 repo 是前端部分。

这是 2022 年重构的前端版本，仅保留双人对战功能。采用 QML 与 C++ 编写。

## 编译指南

对于 Windows 系统，要求安装 Qt 5.15.2 SDK，MSVC v143（VS 2022）。同时，你还需要安装 [xmake](https://xmake.io/#/zh-cn/) 作为构建系统。

对于其他操作系统未经测试。但本项目只使用了 Qt 开源版和 C++ 标准库，因此理论上是跨平台的。你需要使用支持 C++ 20 标准的编译器编译。

本项目的默认 GUI 字体为 Microsoft YaHei UI Light。对于其他操作系统，你需要自行更改字体。

## 源代码文件系统结构

按字典序排序：

- `/src`：源代码文件夹
  - `/src/img`：美术资源文件夹
    - `/src/img/Background.png`：程序背景。图片来源为 KDE Plasma 的默认桌面背景。
    - `/src/img/Black.png`：黑色棋子。使用 PowerPoint 绘制。
    - `/src/img/White.png`：白色棋子。使用 PowerPoint 绘制。
  - `/src/About.qml`：“关于”界面的设计。
  - `/src/BlurRectangle.qml`：提供一个矩形模糊器，可以对它下方的界面产生模糊效果。
  - `/src/Cell.qml`：单个棋盘格的定义。
  - `/src/CellData.cpp`：`CellData.h` 中声明了一些方法，在这个文件中给出定义。
  - `/src/CellData.h`：`CellData` 类的 C++ 声明。这个类存储了单个棋盘格的状态，同时定义了与 `Cell.qml` 交互的接口。
  - `/src/file_process.cpp`：文件处理。包含保存存档和加载存档两个方法。这两个方法是在 `GameData.h` 中声明的。
  - `/src/game_process.cpp`：游戏处理的核心文件，包含棋盘格点击的处理、棋子的移动、胜负判断以及一些辅助函数/方法。方法是在 `GameData.h` 中声明的，这包含了与 `Game.qml` 交互的接口。
  - `/src/Game.qml`：游戏界面的设计。
  - `/src/GameData.h`：存储游戏数据的类。事实上，这个类应当做单例处理，但是我们偷懒没有干（）
  - `/src/getter_and_setter.cpp`：`GameData` 类中用到的 getter 以及 setter。
  - `/src/LightEffect.qml`：用于在鼠标悬浮的区域呈现圆形的白色光效。这类似于微软 Fluent Design。
  - `/src/main.cpp`：主函数，同时负责向 QML 引擎注册 GameData 与 CellData 类的实例。
  - `/src/main.qml`：核心窗口框架。
  - `/src/MainMenu.qml`：主菜单，即游戏启动时显示的界面。
  - `/src/rcs.qrc`：资源文件。由 Qt Creator 自动生成。
  - `/src/TextButton.qml`：一个可以显示文字的按钮。效果类似于微软 Fluent Design。
- `.gitignore`：用于从 git 中排除一些文件。
- `LICENSE`：GNU 通用公共许可证 v3
- `README.md`：本文件。
- `xmake.lua`: xmake 的配置文件。
