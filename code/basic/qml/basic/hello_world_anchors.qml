import QtQuick 2.0

Rectangle  {
    id: page
    width: 500; height: 200
    color: "lightgray"

    // text is centered in the window
    // but not when we resize the window (always at the top)

    // we want to position the "world" according the "hello"

    Text  {
        id: helloText
        text: "Hello"
        y: 30
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true

        MouseArea {
            anchors.fill: parent
            drag.target: helloText
            drag.axis: Drag.YAxis
        }
    }

    Text {
        id: worldText
        text: "world !"
        y: 80
        anchors.horizontalCenter: page.horizontalCenter
        font.pointSize: 24; font.bold: true
    }
}
