import QtQuick
import Quickshell

Scope {
    id: shell

    Variants {
        model: Quickshell.screens

        StatusBar {
            screen: modelData
        }
    }
}
