import Qt.labs.presentation 1.0
import QtQuick 2.0


OpacityTransitionPresentation
{
    BackgroundSwirls {}
    Clock { textColor: "white" }
    SlideCounter { textColor: "white" }

    Slide {
        title: "QtQuick?"

        content: [
            "QtQuick is availlable since Qt4.7",
            " major changes in Qt5 with QtQuick 2.0",
            " focus on QtQuick 2.0",
            "",
            "QtQuick => toolkit",
            "QML => language"
        ]


    }

    Slide {
        title: "QML?"
        fontSize: 40
        content: [
            "QML is a subset of javascript",
            "\"Scripting language\" for \ninterfaces",
            "Describes a document as a \n tree of objects",
            "Declarative",
            "Reactive",
            ""]


        CodeSection {
            text: "Rectangle {\n" +
                  "    width: 360\n" +
                  "    height: 360\n" +
                  "    Text {\n" +
                  "          color: \"#d76b6b\"\n" +
                  "          id: \"hello\"\n" +
                  "          text: \"Hello World\"\n" +
                  "          anchors.centerIn: parent\n" +
                  "    }\n" +
                  "    MouseArea {\n" +
                  "          anchors.fill: parent\n" +
                  "          onClicked: QtApp.quit()\n" +
                  "    }\n" +
                  "}"
        }

    }

    Slide {
        title: "What can we make with this thing?"
        content: [
            "everything you can do in Qt",
            "new gen UI's / multitouch ...",
            "animations / particles effects",
            "3d",
            "...",
            "this presentation"
        ]
    }

    Slide {
        title: "Why you should use QML."
        content: [
        "easier to protptype",
        "does not need C++ knowledge",
        "better applications structure",
        ]
    }

    Slide {
        title: "QML 101"
        content: [
            "QML document and principles",
            "states / transitions / animations",
            "C++ integration"
        ]
    }

    Slide {
        title: "What we will not see here"
        content: [
            "complex C++ interaction",
            "standalone QML applications"
        ]

        Rectangle{
            anchors.bottom: parent.bottom
            height: 200
            width: parent.width
            color: "transparent"

            MouseArea {
                anchors.fill: parent
                onClicked: {disclaimer.visible=true; coding.visible = false}
            }

            Text {
                id: coding
                anchors.top: parent.top;
                width: parent.width
                text: "Let's go coding !"
                font.pointSize: 50
                color: "#d76b6b"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }
            Text {
                id: disclaimer
                anchors.top: parent.top;
                visible: false
                width: parent.width
                font.pointSize: 50
                color: "#d76b6b"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                text: "Disclaimer: \nI've been using QML for 2.5 weeks..."
            }
        }
    }

    Slide {
        title: "Conclusions / remarks"
        content: [
            "very powerfull for UIs",
            "some bugs can be very nasty to find",
            " Qt debugging can help",
            " runtime error messages are often inacurate",
            "integration with Qt is powerfull",
            " but not trivial to set up",
            "UI's are very responsive and can be deployed on Android / iOS / blackberry ... "
        ]
    }

        Slide {
        title: "Conclusions / remarks"
        fontSize: 80
        textColor: "#d76d6b"
        centeredText : "What do you think ? \nWill you use it ? "
    }
}
