import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15


Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Rectangle{
        id:layer0
        width: parent.width
        height: parent.height
        color: "white"
        
        Text{
            id: title0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 30
            text:"SUPPORTED SENSORS!"
            color: "grey"
            font.bold: true
            font.pixelSize: 35
        }

        GridLayout {
            id: grid
            anchors.top: title0.bottom
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            columns: 3
            

            Text{ 
                text: "blank"
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: "blank"
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: "blank"
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: "blank"
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: "blank"
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: "blank"
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

        }

    }




}
