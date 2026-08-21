hl.config({
    input = {
        kb_layout  = "br",
        kb_variant = "abnt2",

        follow_mouse = 1,
        force_no_accel = true,
        accel_profile = "adaptive",

        touchpad = {
            natural_scroll = true,
        },
    },
})

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
