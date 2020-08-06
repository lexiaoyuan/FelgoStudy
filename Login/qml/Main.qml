import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.3

App {

    NavigationStack {

        Page {
            id: loginPage
            title: "登录"

            backgroundColor: "#f6f8fa"

            Image {
                id: logo
                source: "../assets/felgo-logo.png"
                width: dp(100)
                height: dp(100)
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.topMargin: dp(60)
            }

            AppText {
                text: "登录系统"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.top: logo.bottom
                anchors.topMargin: dp(30)
                fontSize: 36
            }

            Rectangle {
                id: loginForm
                anchors.centerIn: parent
                color: "white"
                width: content.width + dp(48)
                height: content.height + dp(16)
                radius: dp(4)
                border.color: "#ced4da"
            }

            GridLayout {
                id: content
                anchors.centerIn: loginForm
                columns: 1

                AppText {
                    id: txtUsername
                    text: "账号"
                    fontSize: 26
                    topPadding: dp(25)
                    leftPadding: dp(10)
                }

                AppTextField {
                    id: username
                    Layout.preferredWidth: dp(300)
                    showClearButton: true
                    font.pixelSize: sp(18)
                    borderWidth: dp(2)
                    anchors.top: txtUsername.bottom
                    anchors.topMargin: dp(10)
                    radius: dp(4)
                    Layout.preferredHeight: dp(42)
                }

                AppText {
                    id: txtPassword
                    text: "密码"
                    fontSize: 26
                    anchors.top: username.bottom
                    topPadding: dp(25)
                    leftPadding: dp(10)
                }
                AppText {
                    id: txtForgetPassword
                    text: "忘记密码？"
                    fontSize: 26
                    anchors.top: username.bottom
                    anchors.left: txtPassword.right
                    topPadding: dp(25)
                    leftPadding: dp(99)
                    color: "blue"
                }

                AppTextField {
                    id: password
                    Layout.preferredWidth: dp(300)
                    showClearButton: true
                    font.pixelSize: sp(18)
                    borderWidth: dp(2)
                    anchors.top: txtPassword.bottom
                    anchors.topMargin: dp(10)
                    echoMode: TextInput.Password
                    radius: dp(4)
                    Layout.preferredHeight: dp(42)
                }

                AppButton {
                    id: signIn
                    text: "登 录"
                    flat: false
                    horizontalPadding: 74
                    textSize: 14
                    backgroundColor: "#28a745"
                    backgroundColorPressed: "#269f42"
                    radius: dp(4)
                    anchors.top: password.bottom
                    anchors.topMargin: dp(10)
                    verticalPadding: 6
                    textColor: "white"
                    anchors.bottom: content.bottom
                }
            }

            Rectangle {
                id: signUpHint
                width: dp(350)
                height: hintContent.height
                radius: dp(4)
                border.color: "#ced4da"
                anchors.top: loginForm.bottom
                anchors.topMargin: dp(25)
                anchors.horizontalCenter: parent.horizontalCenter
            }

            GridLayout {
                id: hintContent
                anchors.centerIn: signUpHint
                columns: 1

                AppText {
                    id: newUser
                    text: "新用户？"
                    fontSize: 26
                    anchors.top: hintContent.top
                    anchors.topMargin: dp(30)
                    bottomPadding: dp(30)
                }

                AppText {
                    text: qsTr("注册一个账号")
                    fontSize: 26
                    color: "blue"
                    anchors.top: hintContent.top
                    anchors.topMargin: dp(30)
                    anchors.left: newUser.right
                    rightPadding: dp(100)
                }

            }

        }

    }
}
