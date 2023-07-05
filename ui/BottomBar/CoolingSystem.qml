import QtQuick 2.15

Rectangle{
    id: cooling_system
    property var cooling_system_controller
    property real size_images: 0.4

    color:"transparent"
    Image{
        id: decrease_temperature
        anchors{
            left:parent.left
            verticalCenter: parent.verticalCenter
        }
        source : "qrc:/ui/Images/decrease.png"
        width:height
        height: parent.height*size_images
        fillMode: Image.PreserveAspectFit

        MouseArea{
            anchors.fill: parent
            onClicked: {cooling_system_controller.referenceTemperature -=1}
        }

    }

    Text{
        id:temperature_text
        anchors.centerIn: parent
        text: cooling_system_controller.referenceTemperature+"°C"
        font{
            pixelSize:17
            bold:true
        }
        color:"#f2f2f2"
    }

    Image{
        id: increase_temperature
        anchors{
            right:parent.right
            verticalCenter: parent.verticalCenter
        }

        source : "qrc:/ui/Images/increase.png"
        width:height
        height: parent.height*size_images
        fillMode: Image.PreserveAspectFit

        MouseArea{
            anchors.fill: parent
            onClicked: {cooling_system_controller.referenceTemperature +=1}
        }
    }
}
