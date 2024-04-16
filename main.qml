import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15
//import infoExchanger 1.0

Item {
    width: 640
    height: 480
    visible: true

    property string value0: "sample" //disp0.m_value0
    property string value1: "sample" //disp0.m_value1
    property string value2: "sample" //disp0.m_value2
    property string value3: "sample" //disp0.m_value3
    property string value4: "sample" //disp0.m_value4
    property string value5: "sample" //disp0.m_value5
    property string value6: "sample" //disp0.m_value6

    Rectangle{
        id:layer0
        width: parent.width
        height: parent.height
        color: "white"
        
        // Infodispencer{
        //     id:disp0
        // }

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
            color: "black"
            font.bold: true
            font.pixelSize: 13
            text: nm.networkstat
        }

        GridLayout {
            id: grid
            anchors.top: networkinfo.bottom
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            anchors.left: parent.left

            columns: 3

            Item{
                Layout.preferredHeight: parent.height/2
                Layout.preferredWidth: parent.width/3
                Text{
                    anchors.centerIn: parent
                    text: btm.buttonstat
                    font.bold: true
                }
            }

            Item{
                Layout.preferredHeight: parent.height/2
                Layout.preferredWidth: parent.width/3
                Text{
                    text: bzm.buzzerstat
                    font.bold: true
                    anchors.centerIn: parent
                }
                MouseArea{
                    anchors.fill:parent
                    onPressed:{
                        bzm.setBuzzerstat("Buzzer ON")
                    }
                    onReleased:{
                        bzm.setBuzzerstat("Buzzer OFF")
                    }
                }
            }

            Item{
                Layout.preferredHeight: parent.height/2
                Layout.preferredWidth: parent.width/3
                Text{
                    anchors.centerIn: parent
                    text: value3
                    font.bold: true
                }
            }


            Item{
                Layout.preferredHeight: parent.height/2
                Layout.preferredWidth: parent.width/3
                Text{
                    anchors.centerIn: parent
                    text: value4
                    font.bold: true
                }
            }

            Item{
                Layout.preferredHeight: parent.height/2
                Layout.preferredWidth: parent.width/3
                Text{
                    anchors.centerIn: parent
                    text: value5
                    font.bold: true
                }
            }

            Item{
                Layout.preferredHeight: parent.height/2
                Layout.preferredWidth: parent.width/3
                Text{
                    anchors.centerIn: parent
                    text: value6
                    font.bold: true
                }
            }
        }

    }

    // Connections {
    //     target: nm
    //     function onNetworkstatChanged(value) {
    //         networkinfo.text=value
    //     }
    // }
}
