hl.monitor({
    output   = "eDP-1",
    mode     = "preferred",
    position = "auto",
    scale    = "auto",
})

hl.monitor({
    output   = "HDMI-A-1",
    --mode     = "1920x1080@60",
    --position = "auto",
    --scale    = "auto",
    mirror   = "eDP-1",
})
