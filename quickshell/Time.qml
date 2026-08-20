pragma Singleton

import Quickshell
import QtQuick

Singleton {
    id: root
    property string time: {
        Qt.formatDateTime(clock.date, "d/M - HH:mm")
    }

    SystemClock {
        id: clock
        precision: SystemClock.Minutes
    }
}
