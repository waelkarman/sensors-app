import QtQuick 2.15
import QtQuick.Controls 2.15

Window {
    visible: true
    visibility: Window.FullScreen
    title: qsTr("hello world")

    Rectangle{
        color: "red"
        anchors.fill: parent
        Text{
            anchors.centerIn:parent
            text:"HELLO!"
            font.bold: true
            font.pixelSize: 35
        }
    }
}
