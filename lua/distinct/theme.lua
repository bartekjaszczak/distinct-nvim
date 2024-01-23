local M = {}

function M.get_theme(colors, settings)
    return {
        none = "NONE",

        -- UI elements
        ui = {
            bg_very_dark = colors.bg_very_dark,
            bg_dark = colors.bg_dark,
            bg_normal = colors.bg_normal,
            bg_light = colors.bg_light,
            bg_very_light = colors.bg_very_light,

            fg = colors.fg,
            fg_accented = colors.fg_light_accent,
            fg_title = colors.fg_accent,

            float = {
                bg = colors.bg_dark,
                border = colors.fg_light_accent,
                title = colors.fg_accent,
                fg = colors.fg,
            },

            select = {
                search_bg = colors.yellow,
                selected_item = colors.fg_accent,
                selected_text = colors.yellow_faded,
            },
        },

        diag = {
            error = {
                fg = colors.red,
                bg = colors.bg_red,
            },
            warn = {
                fg = colors.orange,
                bg = colors.bg_orange,
            },
            info = {
                fg = colors.lime,
                bg = colors.bg_lime,
            },
            hint = {
                fg = colors.blue,
                bg = colors.bg_blue,
            },
            ok = {
                fg = colors.green,
            },
        },

        git = {
            add = colors.green_faded,
            change = colors.yellow_faded,
            delete = colors.red_faded,
        },

        dir = colors.yellow_faded,
        match_paren = colors.yellow,
        non_text = colors.bg_very_light,
        suggestions = colors.blue_faded,

        syntax = {
            text = colors.fg,
            comment = colors.gray_comment,
            comment_special = settings.doc_comments_different_color and colors.yellow_comment or colors.gray_comment,
            string = colors.orange_pale,
            char = colors.orange_pale,
            constant = colors.green,
            number = colors.lime,
            -- variable = colors.yellow_faded,
            variable = colors.fg,
            param = colors.green_pale,
            field = colors.blue_pale,
            global = colors.purple_pale,
            static = colors.blue_faded,
            func = colors.orange_faded,
            method = colors.orange,
            statement = colors.red,
            keyword = colors.red,
            operator = colors.red,
            preproc = colors.purple_faded,
            type = colors.yellow,
            type_builtin = colors.red,
            special = colors.orange,
            debug = colors.orange,
            error = colors.red,
            todo = colors.orange,
            bracket = colors.fg,
            delimiter = colors.fg,
            label = colors.blue,
            namespace = colors.yellow_pale,
            builtin = colors.pink_pale,

            h1 = colors.yellow,
            h2 = colors.orange,
            h3 = colors.red,
            h4 = colors.purple,
            h5 = colors.green,
            h6 = colors.lime,
            link = colors.blue_faded,
        },

        raw = {
            purple = colors.purple,
            pink = colors.pink,
            red = colors.red,
            orange = colors.orange,
            yellow = colors.yellow,
            lime = colors.lime,
            green = colors.green,
            blue = colors.blue,
        },
        raw_faded = {
            purple = colors.purple_faded,
            pink = colors.pink_faded,
            red = colors.red_faded,
            orange = colors.orange_faded,
            yellow = colors.yellow_faded,
            lime = colors.lime_faded,
            green = colors.green_faded,
            blue = colors.blue_faded,
        },
        raw_pale = {
            purple = colors.purple_pale,
            pink = colors.pink_pale,
            red = colors.red_pale,
            orange = colors.orange_pale,
            yellow = colors.yellow_pale,
            lime = colors.lime_pale,
            green = colors.green_pale,
            blue = colors.blue_pale,
        },
    }
end

return M
