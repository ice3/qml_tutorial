import QtQuick 2.0

Rectangle {
    id: button
    width: 100
    height: 100
    property alias text: label.text

    color: "red"

    Text {
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
