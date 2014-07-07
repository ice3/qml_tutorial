import QtQuick 2.0

Rectangle {
    color: "lightgray"
    width: 200
    height: 200

    // custom properties can be defined
    property int animatedValue: 0

    Text {
        anchors.centerIn: parent
        text: animatedValue
    }
}
