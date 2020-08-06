import Felgo 3.0
import QtQuick 2.0

/*App {
    id: app

    property int myValue: 0
    property string highLow: "low"

    NavigationStack {

        Page {
            title: "JavaScript"

            AppText {
                anchors.centerIn: parent
                // Property bindings are JavaScript
                text: app.myValue + " is really " + app.highLow
                color: app.highLow == "low" ? "green" : "red"
            }

            AppButton {
                text: "+2"
                flat: false
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {
                    // Code in signal handlers is JavaScript
                    var plus = 2
                    app.increaseValue(plus)
                }
            }
        }
    }

    // Functions are written in JavaScript
    function increaseValue(amount) {
        app.myValue += amount
        if(app.myValue >= 10) {
            app.highLow = "high"
        }
    }
}*/

/*App {
    id: app

    property int seconds: 0

    NavigationStack {

        Page {
            title: "Timer"

            AppText {
                anchors.centerIn: parent
                text: "Seconds " + seconds
            }

            Timer {
                running: true   // This starts the Timer immediately, you can also use start() and stop()
                repeat: true    // Will repeat to run permanent
                interval: 1000  // Timer interval after which the Timer triggers
                onTriggered: {  // Signal handler fired when Timer triggers, write your logic here
                    app.seconds++
                }
            }
        }
    }
}*/

/*App {
    id: app

    NavigationStack {

        Page {
            title: "Loader"

            AppButton {
                anchors.centerIn: parent
                text: "Create Rectangle"
                onClicked: {
                    // Set the Loader source, as you can see this also supports web urls
                    loader.source = "https://felgo.com/web-assets/RedRectangle.qml"
                }
            }

            Loader {
                id: loader
                // We can change properties of the loaded item in this signal handler
                onLoaded: {
                    item.x = dp(50)
                    item.y = dp(50)
                }
            }
        }
    }
}*/

/*App {
   id: app

   NavigationStack {

     Page {
       id: page
       title: "Dynamic Creation"

       AppButton {
         anchors.centerIn: parent
         text: "Create Rectangle"
         onClicked: {
           // Create an object from the component, with page as parent and custom x/y properties
           rectangleComponent.createObject(page, {"x": 50, "y": 50});
         }
       }
     }
   }

   // For this example, we create an object from a Component. For using a qml file, see the link above.
   // A Component encapsulates a QML component definition, without actually creating it right away
   Component {
     id: rectangleComponent
     Rectangle {
       width: dp(100)
       height: dp(100)
       color: "red"
     }
   }
 }*/

App {
    AppText {
        id: myText
        text: 'Click anywhere'
    }

    WorkerScript {
        id: myWorker
        source: "script.js" // script to run on new thread

        onMessage: myText.text = messageObject.reply
    }

    MouseArea {
        anchors.fill: parent
        onClicked: myWorker.sendMessage({ 'x': mouse.x, 'y': mouse.y })
    }
}
