import QtQuick 2.15

Rectangle {
    id: bottomBar
    property real percentage_cooling_system_width: 0.07
    anchors{
        bottom : parent.bottom
        left: parent.left
        right: parent.right
    }
    color: "#212121"
    height: parent.height*0.07

    Image {
        id: car_icon
        source: "qrc:/ui/Images/car-icon.png"
        width:height
        anchors{
            top:parent.top
            bottom:parent.bottom
            left:parent.left
            topMargin: 5
            leftMargin: 5
        }
    }


    //Cooling System Driver Section
   CoolingSystem{
       id:driver_cooling_system
       cooling_system_controller: DriverCoolingSystemController
       anchors{
           top:parent.top
           bottom: parent.bottom
           left:car_icon.right
           leftMargin: 10
       }
       width: parent.width*percentage_cooling_system_width
   }
   //Cooling System Passenger Section
   CoolingSystem{
       id:driver_passenger_system
       cooling_system_controller: PassengerCoolingSystemController
       anchors{
           top:parent.top
           bottom: parent.bottom
           right:volume.left
           rightMargin: 5
       }
       width: parent.width*percentage_cooling_system_width
   }


   Volume{
       id:volume
       anchors{
           right:parent.right
           top:parent.top
           bottom: parent.bottom
       }
   }

    MultimediaBar{
        id: multimedia_bar
    }




}
