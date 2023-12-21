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
    bg_lime = "#283305",
    bg_blue = "#052433",

    -- fg (HSB 50, xxx, 90)
    fg = "#e6deb8", -- saturation 20
    fg_light_accent = "#e6d68a", -- saturation 40
    fg_accent = "#e6c72e", -- saturation 80

    -- accent colors (HSB xxx, 90, 100)
    purple = "#d919ff", -- hue 290
    pink = "#ff198c", -- hue 330
    red = "#ff3019", -- hue 6
    orange = "#ff8c19", -- hue 30
    yellow = "#ffdd19", -- hue 50, main accent
    lime = "#c6ff19", -- hue 75
    green = "#66ff19", -- hue 100
    blue = "#19b2ff", -- hue 200

    -- faded colors (HSB xxx, 60, 100)
    purple_faded = "#e666ff", -- hue 290
    pink_faded = "#ff66b3", -- hue 330
    red_faded = "#ff7566", -- hue 6
    orange_faded = "#ffb366", -- hue 30
    yellow_faded = "#ffe666", -- hue 50, main accent
    lime_faded = "#d9ff66", -- hue 75
    green_faded = "#99ff66", -- hue 100
    blue_faded = "#66ccff", -- hue 200

    -- pale colors (HSB xxx, 30, 100)
    purple_pale = "#f2b3ff", -- hue 290
    pink_pale = "#ffb3d9", -- hue 330
    red_pale = "#ffbab3", -- hue 6
    orange_pale = "#ffd9b3", -- hue 30
    yellow_pale = "#fff2b3", -- hue 50, main accent
    lime_pale = "#ecffb3", -- hue 75
    green_pale = "#ccffb3", -- hue 100
    blue_pale = "#b3e5ff", -- hue 200

    -- comments
    yellow_comment = "#665e33", -- brightness 40, hue 50, saturation 40
    gray_comment = "#666666", -- brightness 40, saturation 0
}

return colors
