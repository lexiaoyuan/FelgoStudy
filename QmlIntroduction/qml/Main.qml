import Felgo 3.0
import QtQuick 2.0

App {
    id: app
    
    property int clickCount: 0

    NavigationStack {

        Page {
            title: "QML Introduction"
            
            Rectangle {
                color: "#cccccc"
                width: parent.width
                height: parent.height * slider.value
            }
            
            Column {
                anchors.centerIn: parent
                
                AppButton {
                    id: button
                    text: "Click Me!" + app.clickCount
                    flat: false
                    anchors.horizontalCenter: parent.horizontalCenter
                    onClicked: {
                        app.clickCount++
                    }
                }

                AppSlider {
                    id: slider
                    value: 0.3
                }

            }

            AppButton {
                text: "I am centered at the bottom."
                onClicked: console.log("Button clicked!")
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }

            AppText {
                id: appTextItem
                text: "Some Text"
                anchors.centerIn: parent
            }
            AppButton {
                anchors.bottom: parent.bottom
                flat: false
                text: "Toggle"
                onClicked: appTextItem.visible = !appTextItem.visible
            }
            
        }

    }
}
