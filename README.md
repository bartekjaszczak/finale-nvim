# finale-nvim

**finale** is a refined dark theme for Neovim, balancing vivid and pastel tones with a focus on readability and comfort. Designed for contrast, finale offers a polished aesthetic that builds on my previous themes.

## Features

- 10 carefully selected accent colours, along with 10 pastel variations
- Supports **tree-sitter** highlighting as well as **semantic tokens**
- Supports some major plugins (feel free to open an issue if you'd like your plugin supported)
- Includes themes for **lualine** and **barbecue**
- Supports colour overrides and some font style customisations (bold, italic) for syntax

## Usage

### Lazy

If you don't want any customisations, there's no need to call `setup()`. Simply enable and activate the theme:

```lua
{
    "https://gitlab.com/bartekjaszczak/finale-nvim",

    priority = 1000,
    config = function()
        -- Activate the theme
        vim.cmd.colorscheme("finale")
    end
}
```

Colours can be overridden and some formatting (bold, italics) adjusted. You'll need to call `setup()` function for that.

<details>
<summary>Expand to see configuration options</summary>

### Example configuration

````lua
{
    "https://gitlab.com/bartekjaszczak/finale-nvim",

    priority = 1000,

    config = function()
        require("finale").setup({
            styles = {
                -- These are the default styles
                comments = {
                    bold = false,
                    italic = true,
                },
                statements = {
                    bold = true,
                    italic = false,
                }, -- Statements that are NOT keywords + preproc statements (include, define) but NOT macros
                keywords = {
                    bold = true,
                    italic = false,
                },
                operators = {
                    bold = false,
                    italic = false,
                },
            },
            colour_overrides = {
                -- suggestions = "#FFFFFF", -- Copilot inline suggestions
                --
                -- syntax = {
                --     text = "#FFFFFF",            -- Normal text
                --     comment = "#FFFFFF",
                --     comment_special = "#FFFFFF", -- Documentation comments
                --
                --     string = "#FFFFFF",          -- String literals
                --     char = "#FFFFFF",            -- Character literals
                --     stringspecial = "#FFFFFF",   -- Regex, escape characters and other special parts of the string
                --
                --     constant = "#FFFFFF",        -- Constant literals
                --     enummember = "#FFFFFF",
                --
                --     number = "#FFFFFF",    -- Number literals
                --     boolean = "#FFFFFF",   -- Boolean literals
                --
                --     variable = "#FFFFFF",  -- Normal variables
                --     param = "#FFFFFF",     -- Function parameters
                --     field = "#FFFFFF",     -- Member variables, properties
                --     global = "#FFFFFF",    -- Global variables
                --     static = "#FFFFFF",    -- Static variables
                --     builtin = "#FFFFFF", -- Built in variables
                --
                --     func = "#FFFFFF",      -- Functions
                --     method = "#FFFFFF",    -- Methods
                --
                --     statement = "#FFFFFF", -- Statements (usually overridden by another highlight groups, such as keywords, operators, labels, etc.)
                --     keyword = "#FFFFFF",
                --     keyword_flow = "#FFFFFF", -- Keywords related to execution flow, such as conditionals (if, else), loops (for, while), break, continue, goto, etc.
                --     operator = "#FFFFFF",
                --
                --     preproc = "#FFFFFF", -- Preprocessor directives
                --
                --     type = "#FFFFFF", -- Types
                --     type_builtin = "#FFFFFF", -- Built in types, such as int, float, bool (depends on the language)
                --
                --     special = "#FFFFFF", -- Special punctuation, parts of comments, special characters in a string, matching parenthesis
                --
                --     debug = "#FFFFFF", -- Debugging statements
                --     error = "#FFFFFF", -- Errors
                --
                --     bracket = "#FFFFFF", -- Brackets: (), {}, []
                --     delimiter = "#FFFFFF", -- Operators such as: +, *, =, sizeof (C/C++), etc.
                --
                --     label = "#FFFFFF", -- Labels (cases, default)
                --     namespace = "#FFFFFF",
                --     module = "#FFFFFF",
                --     tag = "#FFFFFF",
                --     attribute = "#FFFFFF",
                --
                --     h1 = "#FFFFFF", -- Headers (HTML, markup, documentation)
                --     h2 = "#FFFFFF",
                --     h3 = "#FFFFFF",
                --     h4 = "#FFFFFF",
                --     h5 = "#FFFFFF",
                --     h6 = "#FFFFFF",
                --     link = "#FFFFFF", -- Links in HTML, markdown, text
                -- },
            },
        })

        vim.cmd.colorscheme("finale")
    end,
}
````

</details>

### Lualine

```lua
require("lualine").setup({
    options = {
        -- ...
        theme = "finale"
        -- ...
    },
})
```

### Barbecue

```lua
require("barbecue").setup({
    -- ...
    theme = "finale"
    -- ...
})
```

## Preview

![showcase](showcase/showcase.png?)

## FAQ

### Why is it called finale?

Because it's my 4th Neovim theme this year and I hope it'll be the last one. Forever.

### I'd like to adjust some colours to my liking, how can I do that?

Currently there's no settings available. If you feel like you could use colour overrides (or some other custom configuration), feel free to open an issue.
