import QtQuick
import QtQuick.Controls

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Dating App Questions")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: 0

        Repeater {
            model: ListModel {
                ListElement { questionText: "What's your favorite hobby?" }
                ListElement { questionText: "Describe your ideal weekend." }
                ListElement { questionText: "Do you prefer cats or dogs?" }
                ListElement { questionText: "What's your dream travel destination?" }
                ListElement { questionText: "What are you passionate about?" }
            }

            Item {
                width: swipeView.width
                height: swipeView.height

                Rectangle {
                    anchors.centerIn: parent
                    width: swipeView.width * 0.8
                    height: swipeView.height * 0.5
                    color: "#f0f0f0"
                    radius: 10
                    border.color: "black"

                    Text {
                        text: model.questionText
                        anchors.centerIn: parent
                        width: parent.width * 0.9
                        font.pixelSize: 20
                        color: "black"
                        wrapMode: Text.WordWrap
                        verticalAlignment: Text.AlignVCenter
                    }
                }
            }
        }
    }

    Row {
        spacing: 20
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20

        Button {
            text: "< Previous"
            onClicked: swipeView.currentIndex = Math.max(0, swipeView.currentIndex - 1)
            enabled: swipeView.currentIndex > 0
        }

        Button {
            text: "Next >"
            onClicked: swipeView.currentIndex = Math.min(swipeView.count - 1, swipeView.currentIndex + 1)
            enabled: swipeView.currentIndex < swipeView.count - 1
        }
    }
}
