import QtQuick 2.12

Item {
    width: receiverRectId.width
    height: receiverRectId.height

    // No signal declaration or signal trigger in the the receiver

    // define a slot
    function receiveInfo(count){
        recieverTextId.text = count
        console.log("Slot in receiver module", count)
    }

    Rectangle {
        id: receiverRectId
        width: 100
        height: 100
        color: "red"

        Text {
            id: recieverTextId
            anchors.centerIn: parent
            text: "Start!"
            font.pointSize: 20
            color: "black"
        }
    }
}
