import QtQuick
import QtQuick.Controls

Item {
    width: parent.width
    height: parent.height
    property var model

    Rectangle {
        anchors.centerIn: parent
        width: parent.width * 0.8
        height: parent.height * 0.5
        color: "#f0f0f0"
        radius: 10
        border.color: "black"

        Text {
            text: model
            anchors.centerIn: parent
            width: parent.width * 0.9
            font.pixelSize: 20
            color: "black"
            wrapMode: Text.WordWrap
            verticalAlignment: Text.AlignVCenter
        }
    }
}
