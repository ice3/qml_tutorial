import QtQuick 2.0

Rectangle {
    color: "lightgray"
    width: 200
    height: 200

    // custom properties can be defined
    property int animatedValue: 0

    // and even animated
    SequentialAnimation on animatedValue {
        loops: Animation.Infinite
        PropertyAnimation { to: 150; duration: 1000 }
        PropertyAnimation { to: 0; duration: 1000 }
    }

    Text {
        anchors.centerIn: parent
        text: animatedValue
    }
}
