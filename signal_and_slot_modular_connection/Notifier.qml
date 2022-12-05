import QtQuick 2.12

Item {
    property int count: 0
    property Receiver target: null

    // declare signal
    signal notify(string count)

    // declare handler
    onNotify: {
        /*Only uncomment the below line when doing the signal slot connection
          inside the notifer module, but you should declare your target in the instantiated notifier.*/
        notify.connect(target.receiveInfo)
        console.log("This is from the handler")
    }

    Rectangle {
        id: notifierRectId
        width: 100
        height: 100
        color: "blue"

        Text {
            id: notifierTextId
            anchors.centerIn: parent
            text: count
            font.pointSize: 20
            color: "black"
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                count++
                console.log("Notifier rectangle is clicked!", count)

                // firing the signal
                notify(count)
            }
        }
    }
}
