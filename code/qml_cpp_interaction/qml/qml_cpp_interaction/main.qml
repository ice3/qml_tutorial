import QtQuick 2.0

Rectangle {
    width: 360
    height: 360

    signal mouseClicked(double nb)
    onMouseClicked: console.log(nb)

    Connections{
        target: controller
        onAnswerBack: console.log(ans)
    }

    Text {
        objectName: "text"  // this is needed to be found by findChildren
        text: qsTr("Hello World")
        anchors.centerIn: parent
    }
    MouseArea {
        anchors.fill: parent
        onClicked: {
            mouseClicked(Math.random())
        }
    }
}
