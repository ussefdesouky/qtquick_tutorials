import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property int increment: 0

    Rectangle {
        id: rectId
        width: 100
        height: 100
        color: "blue"

        // declare signal
        signal greet(string message, int count)

        // declare handler
        onGreet: {
            console.log("This is from the handler")
        }

        // define a slot
        function greeting(message){
            console.log("This is from the slot", increment, message)
            increment++
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("Rectangle is clicked!", increment)

                // firing the signal
                rectId.greet("Rectangle is clicked!", increment)
            }
        }

        Component.onCompleted: {
            // connect the signal to the slot
            greet.connect(greeting)
        }
    }
}
