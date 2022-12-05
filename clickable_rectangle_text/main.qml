import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("clickble_rectangle_text")

    Rectangle {

        anchors.centerIn: parent
        color: "blue"
        width: textId.implicitWidth + 20 // must add to wrap text inside the rect
        height: textId.implicitHeight + 20

        Text { // there are 2 Text properties choose the one with purple header
            id: textId
            anchors.centerIn: parent
            text: "youssef"
            color: "white"
            font.pointSize: 20
        }

        MouseArea{
            anchors.fill:parent // without this statement your click on the rectangle isn't triggered
            onClicked: {
                console.log("Here is our new rectangle!")
            }
        }

    }
}
