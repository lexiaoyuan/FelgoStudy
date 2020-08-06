import QtQuick 2.0
import Felgo 3.0

Rectangle {
    id: labelBox

    // adding a new property
    property int padding: 5

    // adding a new property by making the text property of the textItem publicly accessible
    property alias label: textItem.text

    // modify property of Rectangle
    color: "red"
    width: textItem.width + (padding * 2)
    height: textItem.height + (padding * 2)

    // add a child object
    Text {
        id: textItem
        anchors.centerIn: labelBox
        //anchors.centerIn: parent // this would also work, thanks to the QML tree
    }

    Component.onCompleted: {
        console.debug("LabelBox has been constructed")
    }
}
