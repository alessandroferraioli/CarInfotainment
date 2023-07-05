import QtQuick
import QtQuick.Window
import "ui/BottomBar"
import "ui/RightPanel"
import "ui/LeftPanel"


Window {
    width: 1240
    height: 800
    visible: true
    title: qsTr("Car Infotainment")
    color: "white"


    RightPanel{
        id: rightPanel
    }

    LeftPanel{
        id:leftPanel
    }


    BottomBar{
        id : bottomBar
    }



}
