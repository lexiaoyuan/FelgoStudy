import Felgo 3.0
import QtQuick 2.0

/*App {

  NavigationStack {

    Page {
      id: page
      title: "Main Page"

      AppButton {
        anchors.centerIn: parent
        text: "Push Sub Page"
        onClicked: {
          // You need to specify the NavigationStack where to push the new page
          // You can either give the NavigationStack and id, or like in this example, use the navigationStack property of the current page
          page.navigationStack.push(subPage)
        }
      }
    }
  }

  Component {
    id: subPage
    Page {
      title: "Sub Page"
    }
  }
}*/

/*App {

    Navigation {
        // You can try different navigation modes by uncommenting the lines below
        // By default, the mode is chosen depending on the platform. Tabs on iOS, drawer on Android
        //navigationMode: navigationModeDrawer
        //navigationMode: navigationModeTabs

        NavigationItem {
            title: "Main"
            icon: IconType.heart

            NavigationStack {

                Page {
                    id: page
                    title: "Main Page"

                    AppButton {
                        anchors.centerIn: parent
                        text: "Push Sub Page"
                        onClicked: {
                            page.navigationStack.push(subPage)
                        }
                    }
                }
            }
        }

        NavigationItem {
            title: "Second"
            icon: IconType.thlarge

            NavigationStack {

                Page {
                    title: "Second Page"
                }
            }
        }
    }

    Component {
        id: subPage
        Page {
            title: "Sub Page"
        }
    }
}*/

App {
    NavigationStack {

        Page {
            id: page
            title: "Hide Navigation Bar"

            // this is the default, the NavigationStack shows a navigation bar for this page
            navigationBarHidden: false

            AppButton {
                anchors.centerIn: parent
                text: "Show/Hide Navigation Bar"

                // when clicked, we switch the navigationBarHidden property
                onClicked: page.navigationBarHidden = !page.navigationBarHidden
            }
        }
    }
}
