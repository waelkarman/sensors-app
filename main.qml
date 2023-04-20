import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

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
