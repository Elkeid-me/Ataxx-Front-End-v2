# 同化棋

## 简介

北京大学 2021 年计算概论 A 大作业。

本 repo 是前端部分。

这是 2022 年重构的前端版本，仅保留双人对战功能。采用 QML 与 C++ 编写。

## 编译指南

要求安装 Qt 5.15.2 SDK，MSVC v142（VS 2019）或 MSVC v143（VS 2022）。同时，你还需要安装 [xmake](https://xmake.io/#/zh-cn/) 作为构建系统。

运行命令 xmake 构建程序。之后，你需要运行 Qt 的 windeploy，来打包必要的动态链接库文件。对于 Ataxx Front End，大致的命令如下：

```bash
"windeploy的路径" "Ataxx_Front_End可执行文件的路径" --release -qmldir "Qt安装目录下qml文件夹的路径"
```

```bash
"D:\Softwares\Tools\Qt\5.15.2\msvc2019_64\bin\windeployqt.exe" D:\Codes\Qt_Projects\Ataxx_Frontend_xmake\build\windows\x64\release\Ataxx_Front_End.exe" --release -qmldir "D:\Softwares\Tools\Qt\5.15.2\msvc2019_64\qml\"
```
