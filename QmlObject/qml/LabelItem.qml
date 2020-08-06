import QtQuick 2.0
import Felgo 3.0

Item {

    LabelBox {
        id: label1
        label: "Test1"
    }
    LabelBox {
        id: label2
        label: "Test321"
        padding: 10
        anchors.top: label1.bottom
    }
    Item {
        id: some_item
    }
}
