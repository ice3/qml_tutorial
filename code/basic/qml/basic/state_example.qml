import QtQuick 2.0

Rectangle {
    id: page
    width: 500
    height: 500

    function chooseState(state){
        console.log(item.state)
        if (state == "")
            return "upRight"
        if(state == "upRight"){
            return ""
        }
    }

    // we want to change the state of the item when we click on the button
    Rectangle{
        id:button
        anchors.centerIn: parent
        width: 30
        height: 30
        color: "black"
        MouseArea {
            anchors.fill: parent
            onClicked: item.state = chooseState(item.state)
        }
    }

    Rectangle {
        id: item
        width: 10
        height: 10
        color: "red"

        anchors.top: parent.top
        anchors.left: parent.left

        anchors.leftMargin: 50
        anchors.bottomMargin: 50
        anchors.topMargin: 50
        anchors.rightMargin: 50

        // first we add the states
        // what if we want to change the anchors
        states: [
            State {
                name: "upRight"
                PropertyChanges {
                    target: item
                    color: "blue"
                    rotation: 180
                }
                AnchorChanges {
                    target: item
                    anchors.top: parent.top
                    anchors.right: parent.right
                }
            }
        ]

        // a small transition can be interesting to add
        transitions: [
            Transition {
                from: ""
                to: "upRight"
                NumberAnimation { target: item; property: "x"; duration: 1000; easing.type: Easing.InOutQuad }
                NumberAnimation { target: item; property: "rotation"; duration: 1000; easing.type: Easing.InOutQuad}
                ColorAnimation {duration: 1000 }
            }
        ]

    }
}
