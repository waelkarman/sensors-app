import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 800
    height: 800
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        width: parent.width
        height: parent.height
        color: "red"
        Text{
            anchors.centerIn:parent
            text:"HELLO!"
            font.bold: true
            font.pixelSize: 50
        }

    }
}
