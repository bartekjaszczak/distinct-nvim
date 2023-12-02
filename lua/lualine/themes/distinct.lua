local color = require("distinct.colors")
local theme = require("distinct.theme")
theme = theme.get_theme(color, {})

local distinct = {}

distinct.normal = {
    a = { bg = theme.syntax.h1, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.syntax.h1 },
    c = { bg = theme.ui.bg_very_dark, fg = theme.ui.fg, gui = "bold" },
}

distinct.insert = {
    a = { bg = theme.syntax.h4, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.syntax.h4 },
}

distinct.command = {
    a = { bg = theme.syntax.h3, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.syntax.h3 },
}

distinct.visual = {
    a = { bg = theme.syntax.h6, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.syntax.h6 },
}

distinct.replace = {
    a = { bg = theme.syntax.h5, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.syntax.h5 },
}

distinct.terminal = {
    a = { bg = theme.syntax.h2, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.syntax.h2 },
}

distinct.inactive = {
    a = { bg = theme.ui.fg_accented, fg = theme.ui.bg_normal, gui = "bold" },
    b = { bg = theme.ui.bg_normal, fg = theme.ui.fg_accented },
    c = { bg = theme.ui.bg_very_dark, fg = theme.ui.fg },
}

return distinct
