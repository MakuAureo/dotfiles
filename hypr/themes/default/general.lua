hl.config({
    general = {
        gaps_in  = 2,
        gaps_out = 2,

        border_size = 1,

        col = {
            active_border   = { 
                colors = {
                    "rgba(3b08c7ff)",
                    "rgba(7008c4dd)"
                },
                angle = 45
            },
            inactive_border = "rgba(7008c444)",
        },

        resize_on_border = false,
        allow_tearing = false,

        layout = "dwindle",
    },

    dwindle = {
        preserve_split = true, -- You probably want this
    },

    decoration = {
        rounding       = 0,

        active_opacity   = 1.0,
        inactive_opacity = 1.0,

        shadow = {
            enabled      = false,
        },

        blur = {
            enabled   = false,
        },
    },

    animations = {
        enabled = false,
    },

    scrolling = {
        fullscreen_on_one_column = true,
    },

    misc = {
        force_default_wallpaper = 0,    -- Set to 0 or 1 to disable the anime mascot wallpapers
        disable_hyprland_logo   = true, -- If true disables the random hyprland logo / anime girl background. :(
    },
})
