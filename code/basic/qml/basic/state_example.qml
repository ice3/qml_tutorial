import QtQuick 2.0

Rectangle {
    id: page
    width: 500
    height: 500

    // we want to change the state of the item when we click on the button
    Rectangle{
        id:button
        anchors.centerIn: parent
        width: 30
        height: 30
        color: "black"
        MouseArea {
            anchors.fill: parent
            onClicked: console.log("clicked")
        }
    }

    Rectangle {
        id: item
        width: 10
        height: 10
        color: "red"
    }
}
