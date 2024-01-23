local colors = {
    -- main hue: 50 (yellow/gold)
    -- colours max +150 and -50 (effectively hue 0-110 and 350-360)

    -- bg (HSB 50, 10, xxx)
    bg_very_dark = "#121210", -- brightness 7 dark
    bg_dark = "#1a1917", -- brightness 10
    bg_normal = "#292825", -- brightness 16 dim
    bg_light = "#403f39", -- brightness 25 mid
    bg_very_light = "#66645c", -- brightness 40 light

    -- color bg (HSB xxx, xxx, 20)
    bg_red = "#330a05",
    bg_orange = "#331c05",
    bg_green = "#053305",
    bg_blue = "#051c33",

    -- fg (HSB 50, xx, 90)
    fg = "#e6e2cf", -- saturation 10

    -- main: 6, 30, 50
    -- side: 120, 170, 210, 260 - Accented not used in syntax
    -- additional: 235, 300 - Accented not used at all

    -- main accent colours (HSB xxx, 90, 100)
    red = "#ff3019", -- hue 6
    orange = "#ff8c19", -- hue 30
    yellow = "#ffd919", -- hue 50, main accent

    -- side accent colours (HSB xxx, 90, 100)
    green = "#19ff19", -- hue 120
    aqua = "#19ffd9", -- hue 170
    blue = "#198cff", -- hue 210
    purple = "#6619ff", -- hue 260

    -- additional accent colours (HSB xxx, 90, 100) - not used
    -- darkblue = "#192dff", -- hue 235
    -- pink = "#ff19ff", -- hue 300

    -- faded colours (HSB xxx, 60, 100)
    red_faded = "#ff7566", -- hue 6
    orange_faded = "#ffb366", -- hue 30
    yellow_faded = "#ffe666", -- hue 50, main accent
    green_faded = "#66ff66", -- hue 120
    aqua_faded = "#66ffe5", -- hue 170
    blue_faded = "#66b3ff", -- hue 210
    darkblue_faded = "#6673ff", -- hue 235
    purple_faded = "#9966ff", -- hue 260
    pink_faded = "#ff66ff", -- hue 300

    -- pale colours (HSB xxx, 30, 100)
    red_pale = "#ffbab3", -- hue 6
    orange_pale = "#ffd9b3", -- hue 30
    yellow_pale = "#fff2b3", -- hue 50, main accent
    green_pale = "#b3ffb3", -- hue 120
    aqua_pale = "#b3fff2", -- hue 170
    blue_pale = "#b3d9ff", -- hue 210
    darkblue_pale = "#b3b9ff", -- hue 235
    purple_pale = "#ccb3ff", -- hue 260
    pink_pale = "#ffb3ff", -- hue 300

    -- comments
    yellow_comment = "#665e33", -- brightness 40, hue 50, saturation 40
    gray_comment = "#666666", -- brightness 40, saturation 0
}

return colors
