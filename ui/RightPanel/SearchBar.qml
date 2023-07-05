import QtQuick 2.15
import QtQuick.Controls

Rectangle {
    property string text_color: "#818181"

    id:search_bar
    color:"#f2f2f2"
    radius:15
    height:50
    width: parent.width*0.3

    anchors.leftMargin: 10

    Image{
        id: searchIcon

        anchors{
            left:parent.left
            top:parent.top
            bottom:parent.bottom
            margins: 15
        }
        width: height
        fillMode: Qt.KeepAspectRatio
        source:"qrc:/ui/Images/search.png"
    }

    Text{
        id:placeholder
        visible: {input_search.text === ""}
        text:"Search"
        anchors{
            verticalCenter: searchIcon.verticalCenter
            left:searchIcon.right
            leftMargin: 5
            right:parent.right
        }
        font.pixelSize: 15
        color: text_color
    }

    TextInput {
        id: input_search
        anchors{
            verticalCenter: searchIcon.verticalCenter
            left:searchIcon.right
            leftMargin: 5
            right:parent.right
        }

        clip: true
        font.pixelSize: 15
        text: "";
        color: text_color

    }
}
