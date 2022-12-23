import QtQuick 2.3
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

Window {
    id: root
    visible: true
    minimumWidth: 945
    minimumHeight: 643
    maximumWidth: 945
    maximumHeight: 643
    width: 945
    height: 643
    title: "Ataxx Front End"
    Image {
        id: background
        source: "qrc:/img/Background.png"
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent
        sourceSize: Qt.size(945, 643)
        cache: false
    }
    BlurRectangle {
        id: full_blur
        state: "hidden"
        width: 945
        height: root.height
        target: background
        anchors.horizontalCenter: parent.horizontalCenter
    }
    BlurRectangle {
        id: center_blur
        state: "visible"
        withShadow: true
        width: 400
        height: root.height
        target: background
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Loader {
        id:window_loader
        anchors.centerIn: parent
    }
    Component.onCompleted: window_loader.source = "qrc:/MainMenu.qml"
}
