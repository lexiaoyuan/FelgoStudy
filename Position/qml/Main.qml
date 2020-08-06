import Felgo 3.0
import QtQuick 2.0
import "anchor"

App {

    NavigationStack {

        Page {
            id: mainPage
            title: qsTr("Position")

            AppButton {
                text: qsTr("Anchor")
                onClicked: mainPage.navigationStack.push(anchorPage)
            }

        }

    }

    Component {
        id: anchorPage
        Anchor {

        }

    }
}
