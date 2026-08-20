import QtQuick

Rectangle {
    id: batteryBox
    
    required property font fontConfig

    radius: 0
    color: "#1e1e2e"
    border.color: "#313244"
    border.width: 1
    width: batteryLayout.width + 24

    Row {
        id: batteryLayout
        anchors.centerIn: parent
        spacing: 8

        Text {
            text: !BatteryService.isPresent ? "POW" : (BatteryService.isCharging ? "^" : "⌄")
            color: BatteryService.isCharging ? "#a6e3a1" : "#cdd6f4"
            
            // ─── INHERITS GLOBAL FONT ───
            font: batteryBox.fontConfig
        }

        Text {
            text: BatteryService.isPresent ? BatteryService.percentage + "%" : "No Battery"
            color: "#cdd6f4"
            
            // ─── INHERITS GLOBAL FONT ───
            font: batteryBox.fontConfig
        }
    }
}
