import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Item {
    ColumnLayout {
        spacing: 2
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        TextField {
            id: username
            placeholderText: qsTr("Username")
        }
        TextField {
            id: password
            placeholderText: qsTr("Password")
            echoMode: TextInput.Password
        }
    }
}
