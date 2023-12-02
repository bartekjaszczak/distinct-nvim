local colors = {
    -- main hue: 50 (yellow/gold)
    -- colours max +150 and -50 (effectively hue 0-110 and 350-360)

    -- bg (HSB 50, 10, xxx)
    bg_very_dark = "#121210",  -- brightness 7 dark
    bg_dark = "#1a1917",       -- brightness 10
    bg_normal = "#292825",   -- brightness 16 dim
    bg_light = "#403f39",   -- brightness 25 mid
    bg_very_light = "#66645c", -- brightness 40 light

    -- fg (HSB 50, xxx, 90)
    fg = "#e6deb8",              -- saturation 20
    fg_light_accent = "#e6d68a", -- saturation 40
    fg_accent = "#e6c72e",       -- saturation 80

    -- accent colors (HSB xxx, 90, 100)
    red = "#ff3019",        -- hue 6
    orange = "#ff8c19",     -- hue 30
    yellow = "#ffdd19",     -- hue 50, main accent
    lime = "#c6ff19",       -- hue 75
    green = "#19ff19",      -- hue 120
    aquamarine = "#19ffb2", -- hue 160
    blue = "#19b2ff",       -- hue 200

    -- faded colors (HSB xxx, 50, 100)
    red_faded = "#ff8c80",        -- hue 6
    orange_faded = "#ffbf80",     -- hue 30
    yellow_faded = "#ffea80",     -- hue 50, main accent
    lime_faded = "#dfff80",       -- hue 75
    green_faded = "#80ff80",      -- hue 120
    aquamarine_faded = "#80ffd4", -- hue 160
    blue_faded = "#80d4ff",       -- hue 200

    -- bg (HSB xxx, xxx, 20)
    bg_red = "#330a05",
    bg_orange = "#331c05",
    bg_lime = "#283305",
    bg_blue = "#052433",

    -- comments (HSP xxx, 0, xxx)
    yellow_comment = "#665e33", -- brightness 40, saturation 50
    green_comment = "#336633",  -- brightness 40, saturation 50
}

return colors
