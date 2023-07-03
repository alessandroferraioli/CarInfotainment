import QtQuick
import QtQuick.Window
import "ui/BottomBar"
Window {
    width: 1240
    height: 800
    visible: true
    title: qsTr("Hello World")
    color: "green"

    Rectangle{
        id : rightPanel
        anchors{
            bottom:bottomBar.top
            top:parent.top
            right:parent.right
        }
        width:parent.width*0.5
        color:"red"
    }
    Rectangle{
        id : leftPanel
        anchors{
            bottom:bottomBar.top
            top:parent.top
            left:parent.left
        }
        width:parent.width*0.5
        color:"blue"
    }

    BottomBar{
        id : bottomBar
    }


}
