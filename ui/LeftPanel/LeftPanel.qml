import QtQuick 2.15

Rectangle{
    id : leftPanel
    anchors{
        bottom:bottomBar.top
        top:parent.top
        left:parent.left
    }
    width:parent.width*1/3
    color:"#f2f2f2"

    Image{

        anchors.centerIn: parent
        width: parent.width* 0.7
        source: {
            source: "qrc:/ui/Images/car.png"
        }
        fillMode: Image.PreserveAspectFit

    }
}
