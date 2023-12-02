local color = require("distinct.colors")
local theme = require("distinct.theme")
theme = theme.get_theme(color, {})

local M = {
    normal = { fg = theme.ui.fg },

    ellipsis = { fg = theme.ui.fg },
    separator = { fg = theme.ui.fg_accented, bold = true },
    modified = { fg = theme.diag.warn.fg },

    dirname = { fg = theme.ui.fg },
    basename = { fg = theme.ui.fg_title, bold = true },
    context = { fg = theme.ui.fg },

    context_file = { fg = theme.dir },
    context_module = { fg = theme.syntax.namespace },
    context_namespace = { fg = theme.syntax.namespace },
    context_package = { fg = theme.syntax.namespace },
    context_class = { fg = theme.syntax.type },
    context_method = { fg = theme.syntax.method },
    context_property = { fg = theme.syntax.field },
    context_field = { fg = theme.syntax.field },
    context_constructor = { fg = theme.syntax.method },
    context_enum = { fg = theme.syntax.type },
    context_interface = { fg = theme.syntax.type },
    context_function = { fg = theme.syntax.func },
    context_variable = { fg = theme.syntax.variable },
    context_constant = { fg = theme.syntax.constant },
    context_string = { fg = theme.syntax.string },
    context_number = { fg = theme.syntax.number },
    context_boolean = { fg = theme.syntax.boolean },
    context_array = { fg = theme.syntax.variable },
    context_object = { fg = theme.syntax.variable },
    context_key = { fg = theme.syntax.field },
    context_null = { fg = theme.syntax.keyword },
    context_enum_member = { fg = theme.syntax.constant },
    context_struct = { fg = theme.syntax.type },
    context_event = { fg = theme.syntax.type },
    context_type_parameter = { fg = theme.syntax.constant },
    context_operator = { fg = theme.syntax.operator },
}

return M
