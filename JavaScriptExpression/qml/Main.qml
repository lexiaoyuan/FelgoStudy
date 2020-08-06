import Felgo 3.0
import QtQuick 2.0

App {

    NavigationStack {

        Page {
            /*Rectangle {
                id: colorbutton
                width: 200; height: 80;

                color: mousearea.pressed ? "steelblue" : "lightsteelblue"

                MouseArea {
                    id: mousearea
                    anchors.fill: parent
                }
            }*/

            /*Rectangle {
                id: colorbutton
                width: 200; height: 80;

                color: "red"

                MouseArea {
                    id: mousearea
                    anchors.fill: parent
                }

                Component.onCompleted: {
                    color = Qt.binding(function() { return mousearea.pressed ? "steelblue" : "lightsteelblue" });
                }
            }*/

            Rectangle {
                id: button
                width: 200; height: 80; color: "lightsteelblue"

                MouseArea {
                    id: mousearea
                    anchors.fill: parent

                    onPressed: {
                        // arbitrary JavaScript expression
                        label.text = "I am Pressed!"
                    }
                    onReleased: {
                        // arbitrary JavaScript expression
                        label.text = "Click Me!"
                    }

                }

                Text {
                    id: label
                    anchors.centerIn: parent
                    text: "Press Me!"
                }
            }
        }

    }
}
