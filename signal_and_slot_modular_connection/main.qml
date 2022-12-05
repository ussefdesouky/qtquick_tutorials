import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    Notifier{
        id: notifierId
        /*Component.onCompleted: {
            notify.connect(receiverId.receiveInfo)
        }*/
        target: receiverId
    }

    Receiver{
        id: receiverId
        anchors.right: parent.right
    }
    /*Component.onCompleted: {
        notifierId.notify.connect(receiverId.receiveInfo)
    }*/
}
