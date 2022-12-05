import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    property string name: "https://github.com/ussefdesouky/qtquick_tutorials/tree/second_program"
    property int num: 50
    property bool isFemale: false
    property url page: "https://github.com/ussefdesouky/qtquick_tutorials/tree/second_program"
    property real speed: 46.5

    Rectangle{
        anchors.centerIn: parent
        width: num + 50
        height: width + num
        color: "yellow"

        Text {
            id: textRecId
            anchors.centerIn: parent
            text: name
            font.bold: isFemale
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
                console.log("User name is: " + name)

            }
        }
    }

    Component.onCompleted: {
        // @disable-check M16
        if(isFemale){
            console.log("bring a dress")
        }
        else{
            console.log("bring a suit")
        }

        if(name === page){
            console.log("Types are the same")
        }
        else{
            console.log("Types are the different")
        }

        if(name == page){
            console.log("Same Content")
        }
        else{
            console.log("Different Content")
        }
    }
}
