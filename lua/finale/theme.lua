local M = {}

function M.get_theme(colours, opts)
    local theme = {
        none = "NONE",

        -- UI elements
        ui = {
            bg_weak = colours.base.bg_0,
            bg_neutral = colours.base.bg_1,
            bg_strong = colours.base.bg_2,

            fg = colours.base.fg_2,

            grey_weak = colours.base.dark_grey,
            grey_strong = colours.base.light_grey,

            highlight = colours.base.highlight,

            -- Main accent
            accent_weak = colours.pastel.yellow,
            accent_strong = colours.main.yellow,

            -- Complementary accent
            secondary_accent_weak = colours.pastel.blue,
            secondary_accent_strong = colours.main.blue,

            -- Special colour
            special_accent_weak = colours.pastel.pink,
            special_accent_strong = colours.main.pink,
        },

        diag = {
            error = {
                fg = colours.pastel.red,
                bg = colours.base.bg_0,
            },
            warn = {
                fg = colours.pastel.orange,
                bg = colours.base.bg_0,
            },
            info = {
                fg = colours.pastel.lime,
                bg = colours.base.bg_0,
            },
            hint = {
                fg = colours.pastel.blue,
                bg = colours.base.bg_0,
            },
            ok = {
                fg = colours.pastel.green,
            },
        },

        git = {
            add = colours.pastel.green,
            change = colours.pastel.orange,
            delete = colours.pastel.red,
        },

        suggestions = colours.base.dark_grey,

        syntax = {
            text = colours.base.fg_2,
            comment = colours.base.dark_grey,
            comment_special = colours.base.light_grey,

            string = colours.pastel.yellow,
            char = colours.main.lime,
            stringspecial = colours.main.pink,

            constant = colours.pastel.green,
            enummember = colours.pastel.lime,

            number = colours.pastel.pink,
            boolean = colours.pastel.pink,

            variable = colours.base.fg_1,
            param = colours.pastel.orange,
            field = colours.pastel.blue,
            global = colours.pastel.red,
            static = colours.pastel.violet,

            func = colours.main.blue,
            method = colours.main.orange,

            statement = colours.main.red,
            keyword = colours.main.red,
            keyword_flow = colours.main.purple,
            operator = colours.main.red,

            preproc = colours.main.green,

            type = colours.main.yellow,
            type_builtin = colours.main.yellow,

            special = colours.main.pink,

            debug = colours.base.fg_2,
            error = colours.base.fg_2,
            todo = colours.base.fg_2,

            bracket = colours.base.fg_2,
            delimiter = colours.base.fg_2,

            label = colours.main.teal,
            namespace = colours.base.fg_0,
            module = colours.base.fg_0,
            builtin = colours.pastel.purple,
            tag = colours.main.red,
            attribute = colours.main.lime,

            h1 = colours.main.yellow,
            h2 = colours.main.purple,
            h3 = colours.main.orange,
            h4 = colours.main.green,
            h5 = colours.main.red,
            h6 = colours.main.blue,
            link = colours.pastel.blue,
        },
    }

    if opts then
        theme = vim.tbl_deep_extend("force", theme, opts.colour_overrides)
        theme.styles = opts.styles
    end

    return theme
end

return M
