import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
import infoExchanger 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Sensors & Informations")

    property string value0: disp0.m_value0
    property string value1: disp0.m_value1
    property string value2: disp0.m_value2
    property string value3: disp0.m_value3
    property string value4: disp0.m_value4
    property string value5: disp0.m_value5
    property string value6: disp0.m_value6

    Rectangle{
        id:layer0
        width: parent.width
        height: parent.height
        color: "white"
        
        Infodispencer{
            id:disp0
        }

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

        Text{
            id: networkinfo
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: title0.bottom
            anchors.topMargin: 30
            text: value0
            color: "black"
            font.bold: true
            font.pixelSize: 13
        }

        GridLayout {
            id: grid
            anchors.top: title0.bottom
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left
            columns: 3

            Text{ 
                text: value1
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: value2
                font.bold: true
                Layout.alignment : Qt.AlignHCenter
                MouseArea{
                    anchors.fill:parent
                    onPressed:{
                        disp0.m_value2="ON"
                    }
                    onReleased:{
                        disp0.m_value2="OFF"
                    }
                }

            }

            Text{ 
                text: value3
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: value4
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{ 
                text: value5
                font.bold: true
                Layout.alignment : Qt.AlignHCenter                
            }

            Text{
                text: value6
                font.bold: true
                Layout.alignment : Qt.AlignHCenter
            }

        }

    }




}
