import QtQuick 2.0
import Felgo 3.0

Page {
    title: "Anchor Page"

    AppText {
        id: centerItem
        anchors.centerIn: parent
        text: "Centered"
    }

    AppText {
        anchors.top: parent.top
        anchors.left: parent.left
        text: "TopLeft"
    }

    AppText {
        anchors.top: parent.top
        anchors.right: parent.right
        text: "TopRight"
    }

    AppText {
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        text: "BottomLeft"
    }

    AppText {
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        text: "BottomRight"
    }

    AppText {
        anchors.verticalCenter: centerItem.verticalCenter
        anchors.verticalCenterOffset: dp(100)
        anchors.right: centerItem.left
        anchors.rightMargin: dp(50)
        text: "Relative"
    }
}
