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
                bg = colors.bg_light,
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
            comment = colors.green_comment,
            comment_special = settings.doc_comments_different_color and colors.yellow_comment or colors.green_comment,
            string = colors.orange_faded,
            char = colors.orange_faded,
            constant = colors.lime,
            number = colors.aquamarine,
            variable = colors.fg,
            param = colors.green_faded,
            field = colors.yellow_faded,
            global = colors.aquamarine_faded,
            static = colors.blue_faded,
            func = colors.yellow,
            method = colors.orange,
            statement = colors.red,
            keyword = colors.red,
            operator = colors.orange,
            preproc = colors.blue,
            type = colors.yellow,
            type_builtin = colors.red,
            special = colors.orange,
            debug = colors.orange,
            error = colors.red,
            todo = colors.orange,
            bracket = colors.fg,
            delimiter = colors.yellow_faded,
            label = colors.blue,
            namespace = colors.yellow_faded,

            h1 = colors.yellow,
            h2 = colors.orange,
            h3 = colors.red,
            h4 = colors.lime,
            h5 = colors.green_faded,
            h6 = colors.aquamarine,
            link = colors.blue_faded,
        },

        raw = {
            red = colors.red,
            orange = colors.orange,
            yellow = colors.yellow,
            lime = colors.lime,
            green = colors.green,
            aquamarine = colors.aquamarine,
            blue = colors.blue,
        },
        raw_faded = {
            red = colors.red_faded,
            orange = colors.orange_faded,
            yellow = colors.yellow_faded,
            lime = colors.lime_faded,
            green = colors.green_faded,
            aquamarine = colors.aquamarine_faded,
            blue = colors.blue_faded,
        },

    }
end

return M
