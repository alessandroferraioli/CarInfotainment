import QtQuick 2.15

Rectangle {

    id:volume
    width:100
    color: "transparent"
    property real size_images: 0.4


    Image{
        id: decrease_volume
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
            onClicked: {SoundController.volume_level -=1;volume_icon.visible = false; volume_level.visible = true; timer_show_text.restart()}

        }

    }

    Image {
        id: volume_icon
        source: {(SoundController.volume_level === 0 ?  "qrc:/ui/Images/mute.png" : "qrc:/ui/Images/volume.png")}
        anchors{
                verticalCenter: parent.verticalCenter
                horizontalCenter: parent.horizontalCenter
        }
        width:height
        height:parent.height*0.5
        visible: true

    }

    Text {
        id: volume_level
        text: SoundController.volume_level
        visible: false
        font.bold: true
        font.pixelSize: 20
        color: "#f2f2f2"
        anchors.centerIn: volume_icon
    }
    Image{
        id: increase_volume
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
            onClicked: {SoundController.volume_level +=1;volume_icon.visible = false; volume_level.visible = true; timer_show_text.restart()}
        }

    }

    Timer {
        id:timer_show_text
        interval: 1000; running: false; repeat: false
        onTriggered: {volume_icon.visible = true;
                      volume_level.visible = false;}
    }

}
