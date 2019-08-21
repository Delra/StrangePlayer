import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("Strange Players")


    /*  menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit()
            }
        }
    } */
    //ColumnLayout {
    Page {
        anchors.fill: parent
        header: RowLayout {
            Button {
                text: qsTr("<-")
                onClicked: stack.push(Qt.resolvedUrl("menu.qml"))
            }
        }

        StackView {
            anchors.fill: parent
            anchors.verticalCenter: parent.verticalCenter
            id: stack
            initialItem: Qt.resolvedUrl("menu.qml")
        }
    }
    //}
}
