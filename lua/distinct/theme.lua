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
            fg_accented = colors.yellow_faded,
            fg_title = colors.yellow,

            float = {
                bg = colors.bg_dark,
                border = colors.yellow_faded,
                title = colors.yellow,
                fg = colors.fg,
            },

            select = {
                search_bg = colors.yellow,
                selected_item = colors.yellow,
                selected_text = colors.yellow,
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
                fg = colors.green,
                bg = colors.bg_green,
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
            string = colors.purple_pale,
            char = colors.purple_pale,
            stringspecial = colors.pink_faded,
            constant = colors.green,
            enummember = colors.green_faded,
            number = colors.green,
            boolean = colors.green,
            variable = colors.fg,
            param = colors.green_pale,
            field = colors.blue_pale,
            global = colors.pink_pale,
            static = colors.blue_faded,
            func = colors.orange_faded,
            method = colors.orange,
            statement = colors.red,
            keyword = colors.red,
            operator = colors.red_faded,
            preproc = colors.purple_faded,
            type = colors.yellow,
            type_builtin = colors.yellow,
            special = colors.orange,
            debug = colors.orange,
            error = colors.red,
            todo = colors.aqua,
            bracket = colors.fg,
            delimiter = colors.fg,
            label = colors.blue_faded,
            namespace = colors.yellow_pale,
            builtin = colors.darkblue_pale,

            h1 = colors.yellow,
            h2 = colors.orange,
            h3 = colors.red,
            h4 = colors.purple,
            h5 = colors.green,
            h6 = colors.aqua,
            link = colors.blue_faded,
        },

        raw = {
            red = colors.red,
            orange = colors.orange,
            yellow = colors.yellow,
            green = colors.green,
            aqua = colors.aqua,
            blue = colors.blue,
            -- darkblue = colors.darkblue,
            purple = colors.purple,
            -- pink = colors.pink,
        },
        raw_faded = {
            red = colors.red_faded,
            orange = colors.orange_faded,
            yellow = colors.yellow_faded,
            green = colors.green_faded,
            aqua = colors.aqua_faded,
            blue = colors.blue_faded,
            darkblue = colors.darkblue_faded,
            purple = colors.purple_faded,
            pink = colors.pink_faded,
        },
        raw_pale = {
            red = colors.red_pale,
            orange = colors.orange_pale,
            yellow = colors.yellow_pale,
            green = colors.green_pale,
            aqua = colors.aqua_pale,
            blue = colors.blue_pale,
            darkblue = colors.darkblue_pale,
            purple = colors.purple_pale,
            pink = colors.pink_pale,
        },
    }
end

return M
