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
            onClicked: item.state = "upRight"
        }
    }

    Rectangle {
        id: item
        width: 10
        height: 10
        color: "red"
        x: 50
        y: 50

        // first we add the states
        states: [
            State {
                name: "upRight"
                PropertyChanges {
                    target: item
                    color: "blue"
                    rotation: 160
                }
            }
        ]

        // a small transition can be interesting to add


    }
}
