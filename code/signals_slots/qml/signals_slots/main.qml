import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    // it is posible to get slots on every property
    onWidthChanged: console.log(width) // change the window size

    Text {
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            Qt.quit();
        }
    }
}
