import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Window 2.12

ApplicationWindow {
    id: window
    visible: true
    width: 540
    height: 960

    StackView {
        id: stackView
        anchors.fill: parent
        initialItem: ContactsPage {}
    }

}

