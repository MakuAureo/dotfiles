pragma Singleton
import QtQuick
import Quickshell.Services.UPower

QtObject {
    id: service

    // Access the global system battery device
    property var device: UPower.displayDevice
    
    // Derived properties for easy widget binding
    property bool isPresent: device ? device.isPresent : false
    property int percentage: isPresent ? Math.round(device.percentage * 100) : 0
    property bool isCharging: device ? (device.state === UPowerDeviceState.Charging) : false
}

