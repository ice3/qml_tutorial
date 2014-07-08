import QtQuick 2.0

Rectangle {
    width: 600
    height: 600

    // how can we connect to signals emitted by mytext ?
    MyText{id: mytext; anchors.centerIn: parent}
}
