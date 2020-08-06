import Felgo 3.0
import QtQuick 2.12
import QtQuick.Controls 2.2 as Quick2

/*App {

    NavigationStack {

        Page {
            title: "Hello Felgo"

            AppText {
                id: touchLog
                font.pixelSize: sp(8)
            }

            // The MouseArea fills the whole page
            MouseArea {
                anchors.fill: parent
                onPressed: touchLog.text += "\nPressed"
                onReleased: touchLog.text += "\nReleased"
                onPositionChanged: touchLog.text += "\nPosition Changed " + mouseX + " + " + mouseY
                onClicked: touchLog.text += "\nClicked"
            }

            // This button is on top of the MouseArea, thus it consumes the touch event
            AppButton {
                anchors.right: parent.right
                text: "Clear"
                onClicked: touchLog.text = ""
            }
        }
    }
}*/

/*App {

    NavigationStack {

        Page {
            title: "Multi Touch"

            MultiPointTouchArea {
                anchors.fill: parent
                touchPoints: [
                    TouchPoint { id: point1 },
                    TouchPoint { id: point2 }
                ]
            }

            Rectangle {
                width: dp(80)
                height: dp(80)
                color: "blue"
                x: point1.x
                y: point1.y
            }

            Rectangle {
                width: dp(80)
                height: dp(80)
                color: "red"
                x: point2.x
                y: point2.y
            }
        }
    }
}*/

/*App {
    NavigationStack {
        Page {
            title: "Nested Touch Example"

            // Outer Rectangle
            Rectangle {
                anchors.centerIn: parent
                id: outerRect
                width: dp(200)
                height: dp(200)
                color: tapHandler.pressed ? "lightyellow" : "lightgreen"

                TapHandler {
                    id: tapHandler
                }

                // Inner Rectangle
                Rectangle {
                    id: innerRect
                    anchors.centerIn: parent
                    width: dp(75)
                    height: dp(75)
                    color: tapHandler2.pressed ? "lightblue" : "orange"

                    TapHandler {
                        id: tapHandler2
                    }
                }
            }

        }
    }
}*/

/*App {
    NavigationStack {
        Page {
            title: "Drag Example"

            // Draggable Rectangle
            Rectangle {
                // initial position
                x: (parent.width - width) / 2
                y: (parent.height - height) / 2

                width: dp(200)
                height: dp(100)
                color: dragHandler.active ? "lightyellow" : "lightgreen"

                AppText {
                    id: text
                    text: "Drag Me!"
                    anchors.centerIn: parent
                }

                DragHandler { id: dragHandler }
            }

        }
    }
}*/

/*App {
    NavigationStack {
        Page {
            title: "Swipe View"

            Quick2.SwipeView {
                id: swipeView
                width: parent.width
                height: width / 1.5
                Rectangle { color: "lightgreen"  }
                Rectangle { color: "red"  }
                Rectangle { color: "cyan"  }
                Rectangle { color: "yellow"  }
            }

            PageControl {
                height: implicitHeight + dp(5)
                anchors.top: swipeView.bottom
                pages: swipeView.count
                currentPage: swipeView.currentIndex
                clickableIndicator: true
                spacing: dp(10)
                onPageSelected: swipeView.currentIndex = index
                tintColor: "orange"
            }
        }
    }
}*/

/*App {
    Page {
        AppCard {
            id: card
            width: parent.width
            margin: dp(15)
            paper.radius: dp(5)
            swipeEnabled: true
            cardSwipeArea.rotationFactor: 0.05

            // If the card is swiped out, this signal is fired with the direction as parameter
            cardSwipeArea.onSwipedOut: {
                console.debug("card swiped out: " + direction)
            }

            // We use a slightly adapted SimpleRow as header cell, this gives us nice styling with low effort
            header: SimpleRow {
                imageSource: "https://cdn.pixabay.com/photo/2016/06/24/10/47/architecture-1477041_960_720.jpg"
                text: "Lorem ipsum"
                detailText: "Ut enim ad minim veniam"

                enabled: false
                image.radius: image.width/2
                image.fillMode: Image.PreserveAspectCrop
                style: StyleSimpleRow {
                    showDisclosure: false
                    backgroundColor: "transparent"
                }
            }

            // For the media cell, we use a simple AppImage
            media: AppImage {
                width: parent.width
                fillMode: Image.PreserveAspectFit
                source: "https://cdn.pixabay.com/photo/2016/06/24/10/47/architecture-1477041_960_720.jpg"
            }

            // For the content cell, we use some placeholder text
            content: AppText{
                width: parent.width
                padding: dp(15)
                text: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
            }

            // Some useless buttons to display in the actions cell
            actions: Row {
                IconButton {
                    icon: IconType.thumbsup
                }
                IconButton {
                    icon: IconType.sharealt
                }
                AppButton {
                    text: "Follow"
                    flat: true
                }
            }
        }
    }
}*/

import "items"
App {
    CustomButton {
        anchors.centerIn: parent

        // new count property only for this button instance
        property int count: 0

        text: "You clicked "+count+" times."
        backgroundColor: "yellow"
        onClicked: count++
    }

    MyTest {

    }
}
