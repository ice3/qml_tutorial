import QtQuick 2.0

Rectangle {
    color: "lightgray"
    width: 200
    height: 200

    property int animatedValue: 0
    SequentialAnimation on animatedValue {
        loops: Animation.Infinite
        PropertyAnimation { to: 150; duration: 1000 }
        PropertyAnimation { to: 0; duration: 1000 }
    }

    Text {
        anchors.centerIn: parent
        text: animatedValue
    }

    Text {
        antialiasing: true
        anchors.horizontalCenter: parent.horizontalCenter
        text: "lol"


        rotation: {console.log(Math.exp(animatedValue)); Math.exp(animatedValue)}
        y: animatedValue
    }

}
