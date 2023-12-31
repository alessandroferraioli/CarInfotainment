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

    SystemBar{
        id:systemPanel
    }

    SearchBar{
        id: searchBar
        anchors{
            left:parent.left
            top:systemPanel.bottom
            topMargin: 2

        }
    }


}
