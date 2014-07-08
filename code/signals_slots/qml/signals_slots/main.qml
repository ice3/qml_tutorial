import QtQuick 2.0

Rectangle {
    width: 600
    height: 600

    // how can we connect to signals emitted by mytext ?
    // We need to use the connections component !
    Connections{
        target: mytext
        onBegin: console.log("it's time to begin")
    }

    MyText{id: mytext; anchors.centerIn: parent}
}
