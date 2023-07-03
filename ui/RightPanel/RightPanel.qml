import QtQuick 2.15

Rectangle{
    id : rightPanel
    anchors{
        right:parent.right
        top:parent.top
        bottom:bottomBar.top
    }

    width: parent.width *2/3
    color:"#f2f2f2"

    MapModule{
        id: mapModule
    }

    Rectangle{
        id:control_panel
        color: "transparent"
        anchors{
            top:parent.top
            left:parent.left
            right:parent.right
        }

        height : parent.height*0.05

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
    }



}
