import QtQuick 2.15

Rectangle{
    id:system_panel
    color: "transparent"
    anchors{
        top:parent.top
        left:parent.left
        right:parent.right
        topMargin: 5
        leftMargin: 10

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


    Image{
        id:wifi
        source:"qrc:/ui/Images/wifi.png"
        fillMode: Image.PreserveAspectFit
        width:height
        anchors{
            top:parent.top
            bottom: parent.bottom
            left:time.right
            leftMargin: 10
        }

    }

}
