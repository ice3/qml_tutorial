import QtQuick 2.0

Rectangle {
    id: button
    width: 25
    height: 25
    property alias text: label.text

    color: "red"

    Text {
        anchors.fill: parent
        id: label
        text: qsTr("OK")
    }

    MouseArea {
        hoverEnabled: true
        anchors.fill: parent
        onEntered: parent.color = "blue"
        onExited: parent.color = "red"
    }

}
