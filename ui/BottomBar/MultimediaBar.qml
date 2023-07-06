import QtQuick 2.15

Rectangle {

    color: "transparent "
    width: parent.width*0.4
    property string spotify_url: "https://open.spotify.com/"

    anchors{
        top:parent.top
        bottom: parent.bottom
        horizontalCenter: parent.horizontalCenter
    }

    Image {
        id: spotify
        source: "qrc:/ui/Images/spotify.png"
        width: height
        anchors{
            verticalCenter: parent.verticalCenter
            left: parent.left
        }

        height: parent.height*0.8

        MouseArea{
            anchors.fill: parent
            onClicked: {MultimediaController.onOpenUrl(spotify_url)}
        }
    }

    Image {
        id: phone
        source: "qrc:/ui/Images/phone.png"
        width: height
        anchors{
            verticalCenter: parent.verticalCenter
            left: spotify.right
            leftMargin: 5
        }

        height: parent.height*0.8

        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: {phone.source =  "qrc:/ui/Images/phone-onhover.png"}
            onExited: {phone.source ="qrc:/ui/Images/phone.png"}
            onPressed: {phone.source ="qrc:/ui/Images/phone-onclick.png"}
            onReleased: {phone.source ="qrc:/ui/Images/phone.png"}
        }
    }


}
