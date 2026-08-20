import QtQuick

Rectangle {
    id: clockBox
    
    // Accept font from parent
    required property font fontConfig

    radius: 0
    color: "#1e1e2e"
    border.color: "#313244"
    border.width: 1
    width: clockText.contentWidth + 24

    Text {
        id: clockText
        anchors.centerIn: parent
        color: "#cdd6f4"
        
        // ─── INHERITS GLOBAL FONT ───
        font: clockBox.fontConfig

        text: Qt.formatDateTime(new Date(), "dd/MM - hh:mm")
        
        Timer {
            interval: 10000 
            running: true
            repeat: true
            onTriggered: clockText.text = Qt.formatDateTime(new Date(), "dd/MM - hh:mm")
        }
    }
}
