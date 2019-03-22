import QtQuick 2.12
import QtQuick.Controls 2.12

Page {
    id: root

    header: ToolBar {
        Label {
            text: qsTr("Contacts")
            font.pixelSize: 20
            anchors.centerIn: parent
        }
    }

    ListView {
        id: listView
        anchors.fill: parent
        topMargin: 48
        leftMargin: 48
        bottomMargin: 48
        rightMargin: 48
        spacing: 20
        model: ["Albert Einstein", "Ernest Hemingway", "Hans Gude"] // allows us to quickly add temporary components to a page
        delegate: ItemDelegate {
            text: modelData
            width: listView.width - listView.leftMargin - listView.rightMargin
            height: avatar.implicitHeight
            leftPadding: avatar.implicitWidth + 32
            /*

            */
            onClicked: root.StackView.view.push("qrc:/ConversationPage.qml", { inConversationWith: modelData })

            Image {
                id: avatar
                source: "qrc:images/" + modelData.replace(" ", "_") + ".png"
            }
        }
    }
}
