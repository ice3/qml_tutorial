import QtQuick 2.0

Rectangle {
    id: page
    width: 360
    height: 360

    Button {id: b1 ; anchors.centerIn: parent ; colorBg: "green" ; text : "ohhhh"}
    Button {anchors.top: b1.bottom ; anchors.left: b1.right}
}
