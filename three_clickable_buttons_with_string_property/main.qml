import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string textToShow: "NONE"

    Row{
        id: rowId
        anchors.centerIn: parent
        spacing: 20

        Rectangle {

            id: redRectId
            color: "red"
            width: 100
            height: 100
            radius: 20

            MouseArea{
                anchors.fill: parent // without this statement your click on the rectangle isn't triggered
                onClicked: {
                    console.log("Here is our red rectangle!")
                    textToShow = "Red"
                }
            }

        }

        Rectangle {

            id: greenRectId
            color: "green"
            width: 100
            height: 100
            radius: 20

            MouseArea{
                anchors.fill: parent // without this statement your click on the rectangle isn't triggered
                onClicked: {
                    console.log("Here is our green rectangle!")
                    textToShow = "Green"
                }
            }

        }

        Rectangle {

            id: blueRectId
            color: "blue"
            width: 100
            height: 100
            radius: 20

            MouseArea{
                anchors.fill: parent // without this statement your click on the rectangle isn't triggered
                onClicked: {
                    console.log("Here is our blue rectangle!")
                    textToShow = "Blue"
                }
            }

        }

        Rectangle {

            color: "black"
            width: 100
            height: 100
            radius: 60

            Text { // there are 2 Text properties, choose the one with purple header
                id: textId
                anchors.centerIn: parent
                text: textToShow
                color: "white"
                font.pointSize: 20
            }

            MouseArea{
                anchors.fill:parent // without this statement your click on the rectangle isn't triggered
                onClicked: {
                    console.log("Index rectangle!")
                    textToShow = "NONE" // always use this to make it sync with changes
                   // textId.text = textToShow // this will break the binding
                }
            }

        }
    }
}
