require("monitors.config")
require("inputs.config")
require("keybinds.config")
require("windowrules.config")
require("workspacerules.config")

local themeName = require("user-preferences").theme
require("themes." .. themeName .. ".theme")

hl.on("hyprland.start", function () 
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("quickshell")
end)
