import QtQuick 2.0

Rectangle {
    id: button
    width: 25
    height: 25
    property alias text: label.text
    property color colorBg: "red"
    color: colorBg

    anchors.left: parent.left

    Text {
        anchors.fill: parent
        id: label
        text: qsTr("OK")
    }

    MouseArea {
        hoverEnabled: true  // this is needed to catch the hover, otherwise, only click is captured
        anchors.fill: parent
        onEntered: parent.color = "blue"
        onExited: parent.color = colorBg
    }


}
