import QtQuick
import Quickshell

PanelWindow {
    id: window

    anchors.top: true
    anchors.left: true
    anchors.right: true
    
    // Set the overall panel height to match your desired gap
    height: 24
    color: "transparent"

    // ─── DEFINE YOUR MARGINS HERE ───
    property int topPadding: 2
    property int sideMargin: 2
    // ────────────────────────────────

    // 1. Move panel contents inward from screen left/right boundaries
    margins.left: window.sideMargin
    margins.right: window.sideMargin

    // 2. Reserve space for application windows (Height + Extra Gap)
    // Changing this property automatically handles exclusion mode
    exclusiveZone: window.height + window.topPadding

    // Global Font Configuration
    property font globalFont: Qt.font({
        family: "JetBrains Mono",
        pixelSize: 11,
        bold: true
    })

    // 1. CENTER ITEM (Clock Container)
    ClockWidget {
        anchors.horizontalCenter: parent.horizontalCenter
        
        // Position it off the screen top boundary cleanly
        anchors.top: parent.top
        anchors.topMargin: window.topPadding
        
        height: window.height - window.topPadding // Set the rigid height of your widget rectangle
        fontConfig: window.globalFont
    }

    // 2. RIGHT ITEM (Battery Container)
    BatteryWidget {
        anchors.right: parent.right
        
        // Position it off the screen top boundary cleanly
        anchors.top: parent.top
        anchors.topMargin: window.topPadding
        
        height: window.height - window.topPadding // Set the rigid height of your widget rectangle
        fontConfig: window.globalFont
    }
}

