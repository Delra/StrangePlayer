import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    Button {
        id: login
        text: qsTr("Login")
        width: parent.width
        height: 40
        onClicked: stack.push(Qt.resolvedUrl("login.qml"))
    }
    Button {
        id: creation
        text: qsTr("Create a new character")
        width: parent.width
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: login.bottom
        onClicked: stack.push(Qt.resolvedUrl("character.qml"))
    }
    Button {
        id: rules
        text: qsTr("Learn the rules")
        width: parent.width
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: creation.bottom
        onClicked: stack.push(Qt.resolvedUrl("rules.qml"))
    }
    Button {
        id: wiki
        text: qsTr("Read the lore")
        width: parent.width
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: rules.bottom
        onClicked: Qt.openUrlExternally("https://wikipedia.org/")
    }
    Button {
        id: discord
        text: qsTr("Join the Discord")
        width: parent.width
        height: 40
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: wiki.bottom
        onClicked: Qt.openUrlExternally("https://discord.gg/2SeMvMv")
    }


    /*
    ColumnLayout {
        spacing: 2

        Rectangle {
            Layout.alignment: Qt.AlignCenter
            color: "red"
            Layout.preferredWidth: 40
            Layout.preferredHeight: 40
        }

        Rectangle {
            Layout.alignment: Qt.AlignRight
            color: "green"
            Layout.preferredWidth: 40
            Layout.preferredHeight: 70
        }

        Rectangle {
            Layout.alignment: Qt.AlignBottom
            Layout.fillHeight: true
            color: "blue"
            Layout.preferredWidth: 70
            Layout.preferredHeight: 40
        }
    }
  */
}
