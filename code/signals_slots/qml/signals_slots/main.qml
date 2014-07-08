import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    // we can define our own signals
    signal start()

    // slot automatically created
    // the slots can contain multiples instructions
    onStart: {console.log("started"); text.state = "scale0"}

    Text {
        id: text
        text: qsTr("Hello World")
        anchors.centerIn: parent

        State {
            name: "scale0"
            PropertyChanges {
                target: text
                scale: 0
            }
        }
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            start();
        }
    }
}
