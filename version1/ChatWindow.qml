import QtQuick 2.9

Item {
    id: root
    anchors {
        fill: parent
    }



    Component.onCompleted: chatServer.registerClient();

    // Add your chat transcript box, message input box, and message sending button here
}
