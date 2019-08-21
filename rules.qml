import QtQuick 2.5
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3

Pane {
    Rectangle {
        id: scroll
        anchors.top: parent.top
        anchors.left: parent.left
        width: 180
        height: 200
        Component {
            id: rulesDelegate

            Item {
                width: 180
                height: 20
                Text {
                    text: name
                }

                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        selection.currentIndex = index
                        selection.forceActiveFocus()
                    }
                }
            }
        }

        ListView {
            id: selection
            anchors.fill: parent
            clip: true
            model: RulesModel {
                id: rmodel
            }

            delegate: rulesDelegate
            highlight: Rectangle {
                color: 'lightsteelblue'
                radius: 5
            }
            focus: true
            onCurrentIndexChanged: {
                rulesDisplay.text = rmodel.get(currentIndex).content
            }
        }
    }

    Rectangle {
        anchors.left: scroll.right
        anchors.right: parent.right
        anchors.top: parent.top
        anchors.bottom: parent.bottom

        Text {
            id: rulesDisplay
            width: parent.width
            wrapMode: Text.Wrap
            text: selection.ListView.currentIndex ? selection.ListView.currentItem : 'nah'
        }
    }
}
