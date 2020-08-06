import QtQuick 2.0
import Felgo 3.0

// CustomButton extends Item, which is the base type for all UI elements
Item {
    // the default (implicit) size is based on the size of the child text element
    // the width and height thus depend on the actual text value
    implicitWidth: textItem.implicitWidth
    implicitHeight: textItem.implicitHeight

    // public properties and signals
    property color backgroundColor: "green"
    property string text: "Click Me!"
    signal clicked()

    // child elements
    Rectangle {
        anchors.fill: parent
        color: parent.backgroundColor
    }

    Text {
        id: textItem // id for referencing this text item within the component
        text: parent.text
        anchors.centerIn: parent
    }

    // handle touch/click and fire signal when a click happens
    MouseArea {
        anchors.fill: parent
        onClicked: parent.clicked() // emits clicked signal of CustomButton
    }
}
