import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    // we can define our own signals
    signal start()

    // slot automatically created
    onStart: console.log("started")

    Text {
        id: text
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            start();
        }
    }
}
