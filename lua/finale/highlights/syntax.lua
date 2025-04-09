local M = {}

function M.get_highlights(theme)
    return {
        Comment = {
            fg = theme.syntax.comment,
            bold = theme.styles.comments.bold,
            italic = theme.styles.comments.italic,
        },                                           -- (preferred) any constant
        Constant = { fg = theme.syntax.constant },   -- (preferred) any constant
        String = { fg = theme.syntax.string },       --   a string constant: "this is a string"
        Character = { fg = theme.syntax.char },      --  a character constant: 'c', '\n'
        Number = { fg = theme.syntax.number },       --   a number constant: 234, 0xff
        Boolean = { fg = theme.syntax.boolean },     --  a boolean constant: TRUE, false
        Float = { fg = theme.syntax.number },        --    a floating point constant: 2.3e10

        Identifier = { fg = theme.syntax.variable }, -- (preferred) any variable name
        Function = { fg = theme.syntax.func },       -- function name (also: methods for classes)

        Statement = {
            fg = theme.syntax.statement,
            bold = theme.styles.statements.bold,
            italic = theme.styles.statements.italic,
        }, -- (preferred) any statement
        Conditional = {
            fg = theme.syntax.keyword_flow,
            bold = theme.styles.keywords.bold,
            italic = theme.styles.keywords.italic,
        },                                 --  if, then, else, endif, switch, etc.
        Repeat = { link = "Conditional" }, --   for, do, while, etc.
        Label = {
            fg = theme.syntax.label,
            bold = theme.styles.statements.bold,
            italic = theme.styles.statements.italic,
        }, --    case, default, etc.
        Operator = {
            fg = theme.syntax.operator,
            bold = theme.styles.operators.bold,
            italic = theme.styles.operators.italic,
        }, -- "sizeof", "+", "*", etc.
        Keyword = {
            fg = theme.syntax.keyword,
            bold = theme.styles.keywords.bold,
            italic = theme.styles.keywords.italic,
        },                                --  any other keyword
        -- Exception     = { }, --  try, catch, throw
        PreProc = { link = "Statement" }, -- (preferred) generic Preprocessor
        -- Include       = { }, --  preprocessor #include
        -- Define        = {}, --   preprocessor #define
        Macro = { fg = theme.syntax.preproc }, --    same as Define
        -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

        Type = { fg = theme.syntax.type },     -- (preferred) int, long, char, etc.
        StorageClass = { link = "Statement" }, -- static, register, volatile, etc.
        -- Structure     = { }, --  struct, union, enum, etc.
        -- Typedef       = { }, --  A typedef

        Special = { fg = theme.syntax.special }, -- (preferred) any special symbol
        -- SpecialChar   = { }, --  special character in a constant
        -- Tag           = { }, --    you can use CTRL-] on this
        -- Delimiter     = { }, --  character that needs attention
        -- SpecialComment= { }, -- special things inside a comment
        Debug = { fg = theme.syntax.debug }, --    debugging statements

        Underlined = { underline = true },   -- (preferred) text that stands out, HTML links
        Bold = { bold = true },
        Italic = { italic = true },
        Strikethrough = { strikethrough = true },

        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { fg = theme.syntax.error }, -- (preferred) any erroneous construct
        -- Todo = { bg = theme.syntax.todo, fg = theme.ui.bg_neutral }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        qfLineNr = { fg = theme.ui.accent_weak },
        qfFileName = { fg = theme.ui.fg },

        htmlH1 = { fg = theme.syntax.h1, bold = true },
        htmlH2 = { fg = theme.syntax.h2, bold = true },
        htmlH3 = { fg = theme.syntax.h3, bold = true },
        htmlH4 = { fg = theme.syntax.h4, bold = true },
        htmlH5 = { fg = theme.syntax.h5, bold = true },
        htmlH6 = { fg = theme.syntax.h6, bold = true },

        -- mkdHeading = {},
        -- mkdCode = {},
        mkdCodeDelimiter = { bg = theme.ui.bg_strong, fg = theme.ui.fg },
        mkdCodeStart = { fg = theme.ui.accent_weak, bold = true },
        mkdCodeEnd = { fg = theme.ui.accent_weak, bold = true },
        -- mkdLink = {},

        markdownHeadingDelimiter = { fg = theme.syntax.h1, bold = true },
        markdownCode = { fg = theme.ui.accent_weak },
        markdownCodeBlock = { fg = theme.ui.accent_weak },
        markdownH1 = { fg = theme.syntax.h1, bold = true },
        markdownH1Delimiter = { link = "markdownH1" },
        markdownH2 = { fg = theme.syntax.h2, bold = true },
        markdownH2Delimiter = { link = "markdownH2" },
        markdownH3 = { fg = theme.syntax.h3, bold = true },
        markdownH3Delimiter = { link = "markdownH3" },
        markdownH4 = { fg = theme.syntax.h4, bold = true },
        markdownH4Delimiter = { link = "markdownH4" },
        markdownH5 = { fg = theme.syntax.h5, bold = true },
        markdownH5Delimiter = { link = "markdownH5" },
        markdownH6 = { fg = theme.syntax.h6, bold = true },
        markdownH6Delimiter = { link = "markdownH6" },
        markdownUrl = { fg = theme.syntax.link, underline = true },
        markdownLinkText = { fg = theme.syntax.link, underline = true },

        -- ["helpCommand"] = {},

        -- debugPc                Current line in terminal-debug
        debugPC = { bg = theme.diag.info.bg },
        -- debugBreakpoint        Breakpoint in terminal-debug
        debugBreakpoint = { fg = theme.ui.accent_strong, bg = theme.ui.bg_neutral },

        LspReferenceText = { bg = theme.diag.info.bg },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { bg = theme.diag.info.bg, underline = true },
        LspReferenceTarget = { bg = theme.ui.grey_weak, italic = true },
        LspInlayHint = { bg = theme.ui.bg_weak, fg = theme.ui.grey_strong },

        DiagnosticError = { fg = theme.diag.error.fg },
        DiagnosticWarn = { fg = theme.diag.warn.fg },
        DiagnosticInfo = { fg = theme.diag.info.fg },
        DiagnosticHint = { fg = theme.diag.hint.fg },
        DiagnosticOk = { fg = theme.diag.ok.fg },

        DiagnosticUnnecessary = { undercurl = true, special = theme.diag.hint.fg },

        DiagnosticSignError = { fg = theme.diag.error.fg },
        DiagnosticSignWarn = { fg = theme.diag.warn.fg },
        DiagnosticSignInfo = { fg = theme.diag.info.fg },
        DiagnosticSignHint = { fg = theme.diag.hint.fg },

        DiagnosticVirtualTextError = { fg = theme.diag.error.fg, bg = theme.diag.error.bg },
        DiagnosticVirtualTextWarn = { fg = theme.diag.warn.fg, bg = theme.diag.warn.bg },
        DiagnosticVirtualTextInfo = { fg = theme.diag.info.fg, bg = theme.diag.info.bg },
        DiagnosticVirtualTextHint = { fg = theme.diag.hint.fg, bg = theme.diag.hint.bg },
        DiagnosticVirtualTextOk = { fg = theme.diag.ok.fg, bg = theme.diag.ok.bg },

        DiagnosticVirtualLinesError = { fg = theme.diag.error.fg, bg = theme.diag.error.bg },
        DiagnosticVirtualLinesWarn = { fg = theme.diag.warn.fg, bg = theme.diag.warn.bg },
        DiagnosticVirtualLinesInfo = { fg = theme.diag.info.fg, bg = theme.diag.info.bg },
        DiagnosticVirtualLinesHint = { fg = theme.diag.hint.fg, bg = theme.diag.hint.bg },
        DiagnosticVirtualLinesOk = { fg = theme.diag.ok.fg, bg = theme.diag.ok.bg },

        DiagnosticUnderlineError = {
            undercurl = true,
            sp = theme.diag.error.fg,
        },
        DiagnosticUnderlineWarn = {
            undercurl = true,
            sp = theme.diag.warn.fg,
        },
        DiagnosticUnderlineInfo = {
            undercurl = true,
            sp = theme.diag.info.fg,
        },
        DiagnosticUnderlineHint = {
            undercurl = true,
            sp = theme.diag.hint.fg,
        },

        LspCodeLens = { fg = theme.syntax.comment },

        LspInfoBorder = { fg = theme.accent_weak, bg = theme.ui.bg_neutral },
        ALEErrorSign = { fg = theme.diag.error.fg },
        ALEWarningSign = { fg = theme.diag.warn.fg },

        DapStoppedLine = { bg = theme.diag.warn.fg },

        -- vcs
        diffAdded = { fg = theme.git.add },
        diffRemoved = { fg = theme.git.delete },
        diffDeleted = { fg = theme.git.delete },
        diffChanged = { fg = theme.git.change },
        diffOldFile = { fg = theme.git.delete },
        diffNewFile = { fg = theme.git.add },

        dosIniLabel = { link = "@property" },

        -- Treesitter groups
        ["@variable"] = { fg = theme.syntax.variable },                     -- Any variable name that does not have another highlight.
        ["@variable.builtin"] = { fg = theme.syntax.builtin, bold = true }, -- Variable names that are defined by the languages, like `this` or `self`.
        ["@variable.parameter"] = { fg = theme.syntax.param },
        -- ["@variable.parameter.builtin"] = {},
        ["@variable.member"] = { fg = theme.syntax.field },

        ["@constant"] = { fg = theme.syntax.constant },
        ["@constant.builtin"] = { link = "@constant", bold = true },
        ["@constant.macro"] = { fg = theme.syntax.preproc },

        ["@module"] = { fg = theme.syntax.module },
        ["@module.builtin"] = { fg = theme.syntax.module, bold = true },
        ["@label"] = { link = "Label" }, -- For labels: `label:` in C and `:label:` in Lua.

        -- ["@string"] = {},
        ["@string.documentation"] = { fg = theme.ui.accent_weak },
        ["@string.regexp"] = { fg = theme.syntax.stringspecial }, -- For regexes.
        ["@string.escape"] = { fg = theme.syntax.stringspecial }, -- For escape characters within a string.
        ["@string.special"] = { fg = theme.syntax.stringspecial },
        -- ["@string.special.symbol"] = {},
        ["@string.special.url"] = { link = "@markup.link" },
        ["@string.special.path"] = { link = "@markup.link" },

        -- ["@character"] = {},
        -- ["@character.special"] = {},

        ["@boolean"] = { fg = theme.syntax.boolean },
        -- ["@number"] = {},
        -- ["@number.float"] = {},

        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { fg = theme.syntax.type_builtin, bold = true },
        -- ["@type.definition"] = {},

        ["@attribute"] = { fg = theme.syntax.attribute },
        ["@attribute.builtin"] = { fg = theme.syntax.attribute, bold = true },
        ["@property"] = { link = "@variable.member" },

        -- ["@function"] = {},
        ["@function.builtin"] = { fg = theme.syntax.func, bold = true },
        -- ["@function.call"] = {},
        ["@function.macro"] = { link = "Macro" },

        ["@function.method"] = { fg = theme.syntax.method },
        -- ["@function.method.call"] = {},

        ["@constructor"] = { fg = theme.syntax.method }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ["@operator"] = { link = "Operator" },           -- For any operator: `+`, but also `->` and `*` in C.

        ["@keyword"] = { link = "Keyword" },             -- For keywords that don't fall in previous categories.
        -- ["@keyword.coroutine"] = {},
        -- ["@keyword.function"] = {},
        -- ["@keyword.operator"] = {},
        -- ["@keyword.import"] = {},
        -- ["@keyword.type"] = {},
        -- ["@keyword.modifier"] = {},
        ["@keyword.repeat"] = { link = "Conditional" },
        ["@keyword.return"] = { link = "Conditional" },
        -- ["@keyword.debug"] = {},
        -- ["@keyword.exception"] = {},

        ["@keyword.conditional"] = { link = "Conditional" },

        -- ["@keyword.conditional.ternary"] = {},

        -- ["@keyword.directive"] = {},
        -- ["@keyword.directive.define"] = {},

        ["@punctuation.delimiter"] = { fg = theme.syntax.delimiter }, -- For delimiters ie: `.`
        ["@punctuation.bracket"] = { fg = theme.syntax.bracket },     -- For brackets and parens.
        ["@punctuation.special"] = { fg = theme.syntax.special },     -- For special punctutation that does not fall in the catagories before.

        -- ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { fg = theme.syntax.comment_special },

        ["@comment.error"] = { fg = theme.diag.error.fg },
        ["@comment.warning"] = { fg = theme.diag.warn.fg },
        ["@comment.todo"] = { fg = theme.diag.ok.fg },
        ["@comment.note"] = { fg = theme.diag.hint.fg },

        ["@markup.strong"] = { bold = true },
        ["@markup.italic"] = { italic = true },
        ["@markup.strikethrough"] = { strikethrough = true },
        ["@markup.underline"] = { underline = true },

        ["@markup.heading"] = { link = "Title" },
        ["@markup.heading.1"] = { fg = theme.syntax.h1, bold = true },
        ["@markup.heading.2"] = { fg = theme.syntax.h2, bold = true },
        ["@markup.heading.3"] = { fg = theme.syntax.h3, bold = true },
        ["@markup.heading.4"] = { fg = theme.syntax.h4, bold = true },
        ["@markup.heading.5"] = { fg = theme.syntax.h5, bold = true },
        ["@markup.heading.6"] = { fg = theme.syntax.h6, bold = true },

        ["@text.quote"] = { fg = theme.syntax.string },
        ["@text.math"] = { fg = theme.syntax.number },

        ["@markup.link"] = { fg = theme.syntax.link, underline = true },
        ["@markup.link.label"] = { link = "SpecialChar" },
        ["@markup.link.url"] = { link = "@markup.link" },

        ["@markup.raw"] = { fg = theme.ui.accent_weak },
        ["@markup.raw.block"] = { link = "@markup.raw" },

        ["@markup.list"] = { fg = theme.syntax.builtin },
        ["@markup.list.checked"] = { fg = theme.syntax.constant },
        ["@markup.list.unchecked"] = { fg = theme.syntax.type },

        ["@diff.plus"] = { link = "DiffAdd" },
        ["@diff.minus"] = { link = "DiffDelete" },
        ["@diff.delta"] = { link = "DiffChange" },

        ["@tag"] = { fg = theme.syntax.tag },
        ["@tag.builtin"] = { fg = theme.syntax.tag, bold = true },
        ["@tag.attribute"] = { fg = theme.syntax.attribute },
        ["@tag.delimiter"] = { fg = theme.syntax.delimiter },

        -- LSP Semantic Token Groups
        -- Reference: https://code.visualstudio.com/api/language-extensions/semantic-highlight-guide
        ["@lsp.type.boolean"] = { link = "@boolean" },
        ["@lsp.type.builtinType"] = { link = "@type.builtin" },
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
        ["@lsp.type.deriveHelper"] = { link = "@attribute" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { fg = theme.syntax.enummember },
        ["@lsp.type.event"] = { link = "@function" },
        ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
        ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.generic"] = { link = "@variable" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.label"] = { link = "@label" },
        ["@lsp.type.lifetime"] = { link = "StorageClass" },
        ["@lsp.type.macro"] = { link = "Macro" },
        ["@lsp.type.method"] = { link = "@function.method" },
        ["@lsp.type.namespace"] = { fg = theme.syntax.namespace },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.parameter"] = { link = "@variable.parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.regexp"] = { link = "@string.regexp" },
        ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.selfTypeKeyword"] = { link = "@type" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.struct"] = { link = "@type" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.typeAlias"] = { link = "@type.definition" },
        ["@lsp.type.typeParameter"] = { link = "@type" },
        ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = theme.diag.error.fg },
        ["@lsp.type.variable"] = { link = "@variable" }, -- use treesitter styles for regular variables
        ["@lsp.typemod.class.constructorOrDestructor"] = { link = "@constructor" },
        ["@lsp.typemod.comment.documentation"] = { link = "@comment.documentation" },
        ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
        ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
        ["@lsp.typemod.keyword.controlFlow"] = { link = "@keyword.conditional" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.variable.callable"] = { link = "@function" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },
        ["@lsp.typemod.variable.static"] = { fg = theme.syntax.static },
        ["@lsp.typemod.variable.globalScope"] = { fg = theme.syntax.global }, --(global variables)
        -- ["@lsp.typemod.variable.readOnly"] = { fg = theme.syntax.constant },
        ["@lsp.mod.mutable"] = { link = "Underlined" },
        -- ["@lsp.mod.declaration"] = { },
        -- ["@lsp.mod.definition"] = { },
        -- ["@lsp.mod.readonly"] = { },
        -- ["@lsp.mod.static"] = { },
        ["@lsp.mod.deprecated"] = { strikethrough = true },
        ["@lsp.mod.abstract"] = { italic = true },
        ["@lsp.mod.virtual"] = { link = "@lsp.mod.abstract" },
        -- ["@lsp.mod.async"] = { },
        -- ["@lsp.mod.modification"] = { },
        -- ["@lsp.mod.documentation"] = { },
        -- ["@lsp.mod.defaultLibrary"] = { },

        -- Other (TODO?)
        -- ["@embedded"] = {},
    }
end

return M
