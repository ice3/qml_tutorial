import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    // we can define our own signals
    signal clicked_()
    signal begin()

    // slot automatically created
    // the slots can contain multiples instructions
    onClicked_: {label.state = "scale0"; console.log("started")}

    Text {
        id: label
        text: qsTr("Hello World")
        anchors.centerIn: parent
        onStateChanged: console.log(state, scale)

        states: [State {
            name: "scale0"
            PropertyChanges {
                target: label
                scale: 0
            }
        }]

        transitions: [
            Transition {
                from: ""
                to: "scale0"
                NumberAnimation { target: label; property: "scale"; duration: 200; easing.type: Easing.InOutQuad }
            }
        ]
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            clicked_();
        }
    }
}
