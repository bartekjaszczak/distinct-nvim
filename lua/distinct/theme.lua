local M = {}

function M.get_theme(colors, settings)
    return {
        none = "NONE",

        -- UI elements
        ui = {
            bg_very_dark = colors.bg.very_dark,
            bg_dark = colors.bg.dark,
            bg_normal = colors.bg.normal,
            bg_light = colors.bg.light,
            bg_very_light = colors.bg.very_light,

            fg = colors.fg.normal,
            fg_accented = colors.faded.yellow,
            fg_title = colors.main.yellow,

            float = {
                bg = colors.bg_dark,
                border = colors.faded.yellow,
                title = colors.main.yellow,
                fg = colors.fg.normal,
            },

            select = {
                search_bg = colors.main.yellow,
                selected_item = colors.main.yellow,
                selected_text = colors.main.yellow,
            },
        },

        diag = {
            error = {
                fg = colors.main.red,
                bg = colors.bg.red,
            },
            warn = {
                fg = colors.main.dark_orange,
                bg = colors.bg.dark_orange,
            },
            info = {
                fg = colors.main.light_green,
                bg = colors.bg.light_green,
            },
            hint = {
                fg = colors.main.blue,
                bg = colors.bg.blue,
            },
            ok = {
                fg = colors.main.green,
            },
        },

        git = {
            add = colors.faded.light_green,
            change = colors.faded.light_orange,
            delete = colors.faded.red,
        },

        dir = colors.faded.yellow,
        match_paren = colors.main.yellow,
        non_text = colors.bg.very_light,
        suggestions = colors.faded.violet,

        syntax = {
            text = colors.fg.normal,
            comment = colors.fg.dim.white,
            comment_special = settings.doc_comments_different_color and colors.fg.dim.yellow or colors.fg.dim.white,

            string = colors.main.light_green,
            char = colors.main.light_green,
            stringspecial = colors.main.dark_orange,

            constant = colors.faded.light_green,
            enummember = colors.faded.light_green,

            number = colors.faded.pink,
            boolean = colors.faded.pink,

            variable = colors.fg.normal,
            param = colors.faded.green,
            field = colors.faded.blue,
            global = colors.faded.red,
            static = colors.faded.violet,

            func = colors.main.light_orange,
            method = colors.main.dark_orange,

            statement = colors.main.red,
            keyword = colors.main.red,
            keyword_flow = colors.main.pink,
            operator = colors.main.red,

            preproc = colors.main.blue,

            type = colors.main.yellow,
            type_builtin = colors.main.yellow,

            special = colors.main.dark_orange,

            debug = colors.main.dark_orange,
            error = colors.main.red,
            todo = colors.main.light_green,

            bracket = colors.fg.normal,
            delimiter = colors.fg.normal,

            label = colors.main.green,
            namespace = colors.faded.yellow,
            module = colors.faded.yellow,
            builtin = colors.faded.purple,
            tag = colors.main.dark_orange,
            attribute = colors.main.light_orange,

            h1 = colors.main.yellow,
            h2 = colors.main.light_orange,
            h3 = colors.main.dark_orange,
            h4 = colors.main.red,
            h5 = colors.main.pink,
            h6 = colors.main.purple,
            link = colors.faded.blue,
        },

        raw = {
            red = colors.main.red,
            dark_orange = colors.main.dark_orange,
            light_orange = colors.main.light_orange,
            yellow = colors.main.yellow,
            light_green = colors.main.light_green,
            green = colors.main.green,
            turquoise = colors.main.turquoise,
            blue = colors.main.blue,
            violet = colors.main.violet,
            purple = colors.main.purple,
            pink = colors.main.pink,
        },
        raw_faded = {
            red = colors.faded.red,
            dark_orange = colors.faded.dark_orange,
            light_orange = colors.faded.light_orange,
            yellow = colors.faded.yellow,
            light_green = colors.faded.light_green,
            green = colors.faded.green,
            turquoise = colors.faded.turquoise,
            blue = colors.faded.blue,
            violet = colors.faded.violet,
            purple = colors.faded.purple,
            pink = colors.faded.pink,
        },
    }
end

return M
