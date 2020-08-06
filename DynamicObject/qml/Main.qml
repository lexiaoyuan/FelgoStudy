import Felgo 3.0
import QtQuick 2.0
import "componentCreation.js" as MyScript
import "application.qml"

App {

    NavigationStack {

        Page {
            title: qsTr("Main Page")

            Rectangle {
                id: appWindow
                width: 300; height: 300

                Component.onCompleted: MyScript.createSpriteObjects();
            }



        }

    }
    Application {
        id: application
    }
}
