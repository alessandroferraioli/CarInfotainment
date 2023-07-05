import QtQuick 2.15

Rectangle{
    id:system_panel
    color: "transparent"
    anchors{
        top:parent.top
        left:parent.left
        right:parent.right
        topMargin: 5
    }

    height : parent.height*0.05

    /*Lock Car Section*/
    Image {
        id: lock_unlock
        source: (LockController.carLocked ?  "qrc:/ui/Images/lock.png" : "qrc:/ui/Images/unlocked.png")
        anchors{
            left:parent.left
            top:parent.top
            bottom:parent.bottom
        }
        width:height
        anchors.margins: 5
        fillMode: Image.PreserveAspectFit

        MouseArea{
            anchors.fill: parent
            onClicked: {LockController.carLocked = !LockController.carLocked}
        }
    }

    Text{
        id:time
        anchors{
            left:lock_unlock.right
            verticalCenter: lock_unlock.verticalCenter
            leftMargin: 10
        }

        text: ClockController.currentTime
        font{
            pixelSize:20
            bold:true
            family: "Arial"
        }
        color:"black"
    }

    /*Cooling System Section
    Rectangle{
        id: cooling_system
        anchors{
            left :lock_unlock.right
            top:parent.top
            bottom:parent.bottom
        }
        width:parent.width*0.2
        color:"transparent"
        Image{
            id: decrease_temperature
            anchors{
                left:parent.left
                top:parent.top
                bottom: parent.bottom
                right:temperature_text.right
                topMargin: 5
                bottomMargin: 5
            }
            source : "qrc:/ui/Images/decrease.png"
            width:height
            fillMode: Image.PreserveAspectFit

            MouseArea{
                anchors.fill: parent
                onClicked: {CoolingSystemController.referenceTemperature -=1}
            }

        }

        Text{
            id:temperature_text
            anchors.centerIn: parent
            text: CoolingSystemController.referenceTemperature+"°C"
            font{
                pixelSize:17
                bold:true
            }
            color:"black"
        }

        Image{
            id: increase_temperature
            anchors{
                right:parent.right
                top:parent.top
                bottom: parent.bottom
                left:temperature_text.left
                topMargin: 5
                bottomMargin: 5
            }

            source : "qrc:/ui/Images/increase.png"
            width:height
            fillMode: Image.PreserveAspectFit

            MouseArea{
                anchors.fill: parent
                onClicked: {CoolingSystemController.referenceTemperature +=1}
            }
        }
    }

    Image{
        id:wifi
        source:"qrc:/ui/Images/wifi.png"
        fillMode: Image.PreserveAspectFit
        width:height
        anchors{
            top:parent.top
            bottom: parent.bottom
            left:cooling_system.right
        }

    }
    */
}
