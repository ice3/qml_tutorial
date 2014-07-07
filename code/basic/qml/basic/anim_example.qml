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


    // we can even define functions
    function useless(val){
        if(val === 120){
             console.log(val)
        }
    }


    // slots are automagically created for all properties
    // we can detect when they have changed
    onAnimatedValueChanged: useless(animatedValue)


    Text {
        anchors.centerIn: parent
        text: animatedValue
    }
}
