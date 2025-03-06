local M = {}

function M.get_highlights(theme)
    return {
        -- Blink
        BlinkCmpMenu = { link = "NormalFloat" },
        BlinkCmpMenuBorder = { link = "FloatBorder" },
        BlinkCmpMenuSelection = { link = "PmenuSel" },
        BlinkCmpScrollBarThumb = { link = "PmenuThumb" },
        BlinkCmpScrollBarGutter = { link = "PmenuSbar" },
        BlinkCmpLabel = { fg = theme.ui.fg },
        BlinkCmpLabelDeprecated = { fg = theme.ui.grey_strong, strikethrough = true },
        BlinkCmpLabelMatch = { fg = theme.ui.secondary_accent_strong, bold = true },
        BlinkCmpKind = { fg = theme.ui.fg },
        BlinkCmpKindClass = { link = "Type" },
        -- BlinkCmpKindColor = {},
        BlinkCmpKindConstant = { link = "Constant" },
        BlinkCmpKindConstructor = { link = "@constructor" },
        BlinkCmpKindEnum = { link = "Type" },
        BlinkCmpKindEnumMember = { link = "@lsp.type.enumMember" },
        -- BlinkCmpKindEvent = {},
        BlinkCmpKindField = { link = "@field" },
        BlinkCmpKindFile = { link = "Directory" },
        BlinkCmpKindFolder = { link = "Directory" },
        BlinkCmpKindFunction = { link = "Function" },
        BlinkCmpKindInterface = { link = "Type" },
        BlinkCmpKindKeyword = { link = "@keyword" },
        BlinkCmpKindMethod = { link = "@method" },
        BlinkCmpKindModule = { link = "@include" },
        BlinkCmpKindOperator = { link = "Operator" },
        BlinkCmpKindProperty = { link = "@property" },
        BlinkCmpKindReference = { link = "Type" },
        BlinkCmpKindSnippet = { fg = theme.syntax.keyword },
        BlinkCmpKindStruct = { link = "Type" },
        BlinkCmpKindText = { fg = theme.ui.fg },
        BlinkCmpKindTypeParameter = { link = "Type" },
        -- BlinkCmpKindUnit = {},
        BlinkCmpKindValue = { link = "String" },
        BlinkCmpKindVariable = { link = "@variable" },
        BlinkCmpSource = { link = "NonText" },
        BlinkCmpGhostText = { link = "Comment" },
        BlinkCmpDoc = { link = "NormalFloat" },
        BlinkCmpDocBorder = { link = "FloatBorder" },
        BlinkCmpDocCursorLine = { link = "CursorLine" },
        BlinkCmpSignatureHelp = { link = "NormalFloat" },
        BlinkCmpSignatureHelpBorder = { link = "FloatBorder" },
        BlinkCmpSignatureHelpActiveParameter = { bg = theme.diag.warn.fg, fg = theme.ui.bg_neutral, bold = true },

        -- Codeium
        CodeiumSuggestion = { fg = theme.suggestions },

        -- Copilot
        CopilotAnnotation = { fg = theme.suggestions },
        CopilotSuggestion = { fg = theme.suggestions },

        -- GitSigns
        GitSignsAdd = { fg = theme.git.add },
        GitSignsChange = { fg = theme.git.change },
        GitSignsDelete = { fg = theme.git.delete },

        -- Indent-blankline
        IndentBlanklineChar = { fg = theme.ui.bg_weak },
        IndentBlanklineSpaceChar = { fg = theme.ui.bg_weak },
        IndentBlanklineSpaceCharBlankline = { fg = theme.ui.bg_weak },
        IndentBlanklineContextChar = { fg = theme.ui.special_accent_strong },
        IndentBlanklineContextStart = { sp = theme.ui.special_accent_strong, underline = true },
        IblIndent = { fg = theme.ui.bg_weak },
        IblWhitespace = { fg = theme.ui.bg_weak },
        IblScope = { fg = theme.ui.special_accent_strong },

        -- Lazy
        LazySpecial = { fg = theme.ui.secondary_accent_strong },
        LazyButtonActive = { fg = theme.ui.fg, bg = theme.ui.grey_weak },

        -- Local-highlight.nvim
        LocalHighlight = { bg = theme.ui.highlight },

        -- Lsp-signature
        LspSignatureActiveParameter = { bg = theme.diag.warn.fg, fg = theme.ui.bg_neutral, bold = true },

        -- Mason
        MasonHeader = { fg = theme.ui.accent_strong },
        MasonHeaderSecondary = { fg = theme.ui.secondary_accent_strong },
        MasonHeading = { fg = theme.ui.fg },

        MasonHighlight = { fg = theme.ui.accent_strong },
        MasonHighlightBlock = { fg = theme.ui.accent_strong, bg = theme.ui.grey_weak },
        MasonHighlightBlockBold = { fg = theme.ui.accent_strong, bg = theme.ui.grey_weak, bold = true },
        MasonHighlightBlockBoldSecondary = {
            fg = theme.ui.secondary_accent_strong,
            bg = theme.ui.grey_weak,
            bold = true,
        },
        MasonHighlightBlockSecondary = { fg = theme.ui.secondary_accent_strong, bg = theme.ui.grey_weak },
        MasonHighlightSecondary = { fg = theme.ui.secondary_accent_strong },

        MasonMuted = { fg = theme.ui.special_accent_weak },
        MasonMutedBlock = { fg = theme.ui.special_accent_weak, bg = theme.ui.grey_weak },
        MasonMutedBlockBold = { fg = theme.ui.special_accent_strong, bg = theme.ui.grey_weak, bold = true },

        MasonNormal = { bg = theme.ui.bg_weak },
        MasonWarning = { link = "WarningMsg" },
        MasonError = { link = "ErrorMsg" },
        MasonLink = { link = "MasonHighlight" },

        -- Nvim-bfq
        -- BqfPreviewFloat = {},
        BqfPreviewBorder = { fg = theme.ui.accent_weak, bg = theme.ui.bg_neutral },
        -- BqfPreviewTitle = {},
        -- BqfPreviewThumb = {},
        -- BqfPreviewSbar = {},
        -- BqfPreviewCursor = {},
        -- BqfPreviewCursorLine = {},
        -- BqfPreviewRange = {},
        -- BqfPreviewBufLabel = {},
        -- BqfSign = {},

        -- Nvim-cmp
        CmpDocumentation = { link = "NormalFloat" },
        CmpDocumentationBorder = { link = "FloatBorder" },
        CmpGhostText = { link = "Comment" },
        CmpCompletion = { link = "NormalFloat" },
        CmpCompletionSel = { link = "PmenuSel" },
        CmpCompletionBorder = { link = "CmpDocumentationBorder" },
        CmpCompletionThumb = { link = "PmenuThumb" },
        CmpCompletionSbar = { link = "PmenuSbar" },
        CmpItemAbbr = { fg = theme.ui.fg },
        CmpItemAbbrDeprecated = { fg = theme.ui.grey_strong, strikethrough = true },
        CmpItemAbbrMatch = { fg = theme.ui.secondary_accent_strong, bold = true },
        CmpItemAbbrMatchFuzzy = { link = "CmpItemAbbrMatch" },
        CmpItemKindDefault = { fg = theme.ui.fg },
        CmpItemMenu = { fg = theme.ui.fg },

        CmpItemKind = { fg = theme.ui.fg }, -- Default

        CmpItemKindClass = { link = "Type" },
        -- CmpItemKindColor = {},
        CmpItemKindConstant = { link = "Constant" },
        CmpItemKindConstructor = { link = "@constructor" },
        CmpItemKindEnum = { link = "Type" },
        CmpItemKindEnumMember = { link = "@lsp.type.enumMember" },
        -- CmpItemKindEvent = {},
        CmpItemKindField = { link = "@field" },
        CmpItemKindFile = { link = "Directory" },
        CmpItemKindFolder = { link = "Directory" },
        CmpItemKindFunction = { link = "Function" },
        CmpItemKindInterface = { link = "Type" },
        CmpItemKindKeyword = { link = "@keyword" },
        CmpItemKindMethod = { link = "@method" },
        CmpItemKindModule = { link = "@include" },
        CmpItemKindOperator = { link = "Operator" },
        CmpItemKindProperty = { link = "@property" },
        CmpItemKindReference = { link = "Type" },
        CmpItemKindSnippet = { fg = theme.syntax.keyword },
        CmpItemKindStruct = { link = "Type" },
        CmpItemKindText = { fg = theme.ui.fg },
        CmpItemKindTypeParameter = { link = "Type" },
        -- CmpItemKindUnit = {},
        CmpItemKindValue = { link = "String" },
        CmpItemKindVariable = { link = "@variable" },

        CmpItemKindCopilot = { fg = theme.suggestions },
        CmpItemKindCodeium = { fg = theme.suggestions },
        CmpItemKindTabNine = { fg = theme.suggestions },

        -- Nvim-spectre
        SpectreBody = { link = "WinSeparator" },
        SpectreBorder = { link = "FloatBorder" },
        SpectreDir = { link = "Directory" },
        SpectreFile = { link = "FloatTitle" },
        SpectreHeader = { link = "Comment" },
        SpectreReplace = { link = "DiffAdd" },
        SpectreSearch = { link = "DiffDelete" },

        -- Nvim-surround
        -- NvimSurroundHighlight = { link = "Visual" },

        -- Pounce
        PounceUnmatched = { link = "None" },
        PounceAcceptBest = { link = "Substitute" },
        PounceCursorAcceptBest = { link = "Substitute" },
        PounceAccept = { link = "CurSearch" },
        PounceCursorAccept = { link = "CurSearch" },
        PounceCursor = { link = "Cursor" },
        PounceMatch = { link = "Visual" },
        PounceGap = { bg = theme.ui.accent_weak, fg = theme.ui.bg_neutral },
        PounceCursorGap = { bg = theme.ui.grey_strong, fg = theme.ui.bg_neutral },

        -- Symbols-outline
        FocusedSymbol = { fg = theme.diag.info.fg, bg = theme.diag.info.bg },
        SymbolsOutlineConnector = { fg = theme.ui.accent_weak },

        -- Telescope
        TelescopeNormal = { fg = theme.ui.fg, bg = theme.ui.bg_neutral },
        TelescopeBorder = { link = "Normal" },
        TelescopeSelection = { bg = theme.ui.grey_weak },
        TelescopeSelectionCaret = { bg = theme.ui.grey_weak },
        TelescopeResultsClass = { link = "Type" },
        TelescopeResultsStruct = { link = "Type" },
        TelescopeResultsField = { link = "@field" },
        TelescopeResultsMethod = { link = "@method" },
        TelescopeResultsVariable = { link = "@variable" },
        TelescopeMatching = { fg = theme.ui.special_accent_strong, bold = true },

        -- Todo-comments
        Todo = { link = "TodoBgTODO" },
        TodoFgTODO = { fg = theme.diag.info.fg },
        TodoBgTODO = { fg = theme.ui.bg_neutral, bg = theme.diag.info.fg },
        TodoSignTODO = { fg = theme.diag.info.fg, bg = theme.ui.bg_neutral },
        TodoFgFIX = { fg = theme.diag.error.fg },
        TodoBgFIX = { fg = theme.ui.bg_neutral, bg = theme.diag.error.fg },
        TodoSignFIX = { fg = theme.diag.error.fg, bg = theme.ui.bg_neutral },
        TodoFgHACK = { fg = theme.diag.warn.fg },
        TodoBgHACK = { fg = theme.ui.bg_neutral, bg = theme.diag.warn.fg },
        TodoSignHACK = { fg = theme.diag.warn.fg, bg = theme.ui.bg_neutral },
        TodoFgNOTE = { fg = theme.diag.hint.fg },
        TodoBgNOTE = { fg = theme.ui.bg_neutral, bg = theme.diag.hint.fg },
        TodoSignNOTE = { fg = theme.diag.hint.fg, bg = theme.ui.bg_neutral },
        TodoFgPERF = { fg = theme.diag.warn.fg },
        TodoBgPERF = { fg = theme.ui.bg_neutral, bg = theme.diag.warn.fg },
        TodoSignPERF = { fg = theme.diag.warn.fg, bg = theme.ui.bg_neutral },
        TodoFgTEST = { fg = theme.diag.hint.fg },
        TodoBgTEST = { fg = theme.ui.bg_neutral, bg = theme.diag.hint.fg },
        TodoSignTEST = { fg = theme.diag.hint.fg, bg = theme.ui.bg_neutral },
        TodoFgWARN = { fg = theme.diag.warn.fg },
        TodoBgWARN = { fg = theme.ui.bg_neutral, bg = theme.diag.warn.fg },
        TodoSignWARN = { fg = theme.diag.warn.fg, bg = theme.ui.bg_neutral },

        -- Treesitter-context
        TreesitterContext = { bg = theme.ui.bg_weak },
        TreesitterContextLineNumber = { fg = theme.ui.accent_weak, bg = theme.ui.bg_weak },
        -- TreesitterContextBottom = {},

        -- Undotree
        UndotreeBranch = { fg = theme.diag.ok.fg },
        UndotreeCurrent = { fg = theme.diag.error.fg, bold = true },
        UndotreeFirstNode = { fg = theme.diag.hint.fg },
        UndotreeHead = { fg = theme.diag.hint.fg, bold = true },
        UndotreeHelp = { fg = theme.ui.accent_weak },
        UndotreeHelpKey = { fg = theme.diag.warn.fg },
        UndotreeHelpTitle = { fg = theme.diag.error.fg },
        UndotreeNext = { fg = theme.diag.error.fg },
        UndotreeNode = { fg = theme.diag.ok.fg },
        UndotreeNodeCurrent = { fg = theme.diag.error.fg, bold = true },
        UndotreeSavedBig = { fg = theme.diag.warn.fg, bold = true },
        UndotreeSavedSmall = { fg = theme.diag.warn.fg },
        UndotreeSeq = { fg = theme.ui.accent_weak },
        UndotreeTimeStamp = { fg = theme.ui.grey_strong },

        -- Render-markdown
        RenderMarkdownH1 = { fg = theme.syntax.h1, bg = theme.ui.bg_neutral },
        RenderMarkdownH1Bg = { bg = theme.syntax.h1, fg = theme.ui.bg_neutral },
        RenderMarkdownH2 = { fg = theme.syntax.h2, bg = theme.ui.bg_neutral },
        RenderMarkdownH2Bg = { bg = theme.syntax.h2, fg = theme.ui.bg_neutral },
        RenderMarkdownH3 = { fg = theme.syntax.h3, bg = theme.ui.bg_neutral },
        RenderMarkdownH3Bg = { bg = theme.syntax.h3, fg = theme.ui.bg_neutral },
        RenderMarkdownH4 = { fg = theme.syntax.h4, bg = theme.ui.bg_neutral },
        RenderMarkdownH4Bg = { bg = theme.syntax.h4, fg = theme.ui.bg_neutral },
        RenderMarkdownH5 = { fg = theme.syntax.h5, bg = theme.ui.bg_neutral },
        RenderMarkdownH5Bg = { bg = theme.syntax.h5, fg = theme.ui.bg_neutral },
        RenderMarkdownH6 = { fg = theme.syntax.h6, bg = theme.ui.bg_neutral },
        RenderMarkdownH6Bg = { bg = theme.syntax.h6, fg = theme.ui.bg_neutral },
    }
end

return M
