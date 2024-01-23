local M = {}

function M.get_highlights(theme)
    return {
        -- Colors (used somewhere, probably)
        Blue = { fg = theme.raw.blue },
        Yellow = { fg = theme.raw.yellow },
        Red = { fg = theme.raw.red },
        Green = { fg = theme.raw.green },
        Brown = { fg = theme.raw.orange }, -- Hehe

        Comment = { fg = theme.syntax.comment, italic = true }, -- (preferred) any constant
        Constant = { fg = theme.syntax.constant },              -- (preferred) any constant
        String = { fg = theme.syntax.string },                  --   a string constant: "this is a string"
        Character = { fg = theme.syntax.char },                 --  a character constant: 'c', '\n'
        Number = { fg = theme.syntax.number },                  --   a number constant: 234, 0xff
        Boolean = { fg = theme.syntax.number },                 --  a boolean constant: TRUE, false
        Float = { fg = theme.syntax.number },                   --    a floating point constant: 2.3e10

        Identifier = { fg = theme.syntax.variable },            -- (preferred) any variable name
        Function = { fg = theme.syntax.func },                  -- function name (also: methods for classes)

        Statement = { fg = theme.syntax.statement },            -- (preferred) any statement
        -- Conditional   = { }, --  if, then, else, endif, switch, etc.
        -- Repeat        = { }, --   for, do, while, etc.
        Label = { fg = theme.syntax.label },       --    case, default, etc.
        Operator = { fg = theme.syntax.operator }, -- "sizeof", "+", "*", etc.
        Keyword = { fg = theme.syntax.keyword },   --  any other keyword
        -- Exception     = { }, --  try, catch, throw
        PreProc = { fg = theme.syntax.keyword },   -- (preferred) generic Preprocessor
        -- Include       = { }, --  preprocessor #include
        -- Define        = {}, --   preprocessor #define
        Macro = { fg = theme.syntax.preproc }, --    same as Define
        -- PreCondit     = { }, --  preprocessor #if, #else, #endif, etc.

        Type = { fg = theme.syntax.type, bold = true }, -- (preferred) int, long, char, etc.
        StorageClass = { fg = theme.syntax.keyword },   -- static, register, volatile, etc.
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

        -- ("Ignore", below, may be invisible...)
        -- Ignore = { }, -- (preferred) left blank, hidden  |hl-Ignore|

        Error = { fg = theme.syntax.error },                      -- (preferred) any erroneous construct
        Todo = { bg = theme.syntax.todo, fg = theme.ui.bg_dark }, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        qfLineNr = { fg = theme.ui.fg_accented },
        qfFileName = { fg = theme.ui.fg },

        htmlH1 = { fg = theme.syntax.h1, bold = true },
        htmlH2 = { fg = theme.syntax.h2, bold = true },

        -- mkdHeading = {},
        -- mkdCode = {},
        mkdCodeDelimiter = { bg = theme.ui.bg_very_dark, fg = theme.ui.fg },
        mkdCodeStart = { fg = theme.ui.fg_accented, bold = true },
        mkdCodeEnd = { fg = theme.ui.fg_accented, bold = true },
        -- mkdLink = {},

        markdownHeadingDelimiter = { fg = theme.syntax.h1, bold = true },
        markdownCode = { fg = theme.ui.fg_accented },
        markdownCodeBlock = { fg = theme.ui.fg_accented },
        markdownH1 = { fg = theme.syntax.h1, bold = true },
        markdownH2 = { fg = theme.syntax.h2, bold = true },
        markdownLinkText = { fg = theme.syntax.link, underline = true },

        -- ["helpCommand"] = {},

        -- debugPc                Current line in terminal-debug
        debugPC = { bg = theme.diag.info.bg },
        -- debugBreakpoint        Breakpoint in terminal-debug
        debugBreakpoint = { fg = theme.ui.select.search_bg, bg = theme.ui.bg_dark },

        LspReferenceText = { bg = theme.diag.info.bg },
        LspReferenceRead = { link = "LspReferenceText" },
        LspReferenceWrite = { bg = theme.diag.info.bg, underline = true },
        -- LspInlayHint = { link = "NonText"},

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

        DiagnosticUnderlineError = {
            underdouble = true,
            sp = theme.diag.error.fg,
        },
        DiagnosticUnderlineWarn = {
            underdouble = true,
            sp = theme.diag.warn.fg,
        },
        DiagnosticUnderlineInfo = {
            underline = true,
            sp = theme.diag.info.fg,
        },
        DiagnosticUnderlineHint = {
            underline = true,
            sp = theme.diag.hint.fg,
        },

        LspCodeLens = { fg = theme.syntax.comment },

        LspInfoBorder = { fg = theme.fg_accented, bg = theme.ui.float.bg },
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

        -- Misc
        -- ["@comment"] = { link = "Comment" },
        ["@comment.documentation"] = { fg = theme.syntax.comment_special },
        ["@error"] = { link = "Error" },
        -- ["@none"] = {},
        -- ["@preproc"] = {},
        -- ["@define"] = {},
        ["@operator"] = { fg = theme.syntax.operator }, -- For any operator: `+`, but also `->` and `*` in C.

        --- Punctuation
        ["@punctuation.delimiter"] = { fg = theme.syntax.delimiter }, -- For delimiters ie: `.`
        ["@punctuation.bracket"] = { fg = theme.syntax.bracket },     -- For brackets and parens.
        ["@punctuation.special"] = { fg = theme.syntax.special },     -- For special punctutation that does not fall in the catagories before.

        --- Literals
        -- ["@string"] = {},
        ["@string.documentation"] = { fg = theme.fg_light_accent },
        ["@string.regex"] = { fg = theme.syntax.special },  -- For regexes.
        ["@string.escape"] = { fg = theme.syntax.special }, -- For escape characters within a string.
        -- ["@string.special"] = {},
        -- ["@character"] = {},
        -- ["@character.special"] = {},
        -- ["@boolean"] = {},
        -- ["@number"] = {},
        -- ["@float"] = {},

        --- Functions
        -- ["@function"] = {},
        ["@function.builtin"] = { link = "@function" },
        -- ["@function.call"] = {},
        -- ["@function.macro"] = {},
        ["@method"] = { fg = theme.syntax.method },      -- For builtin parameters of a function, e.g. "..." or Smali's p[1-99]
        -- ["@method.call"] = {},
        ["@constructor"] = { fg = theme.syntax.method }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
        ["@parameter"] = { fg = theme.syntax.param },    -- For parameters of a function.

        --- Keywords
        ["@keyword"] = { fg = theme.syntax.keyword }, -- For keywords that don't fall in previous categories.
        -- ["@keyword.coroutine"] = {},
        -- ["@keyword.function"] = {},
        -- ["@keyword.operator"] = {},
        -- ["@keyword.return"] = {},
        -- ["@repeat"] = {},
        -- ["@debug"] = {},
        ["@label"] = { link = "Label" }, -- For labels: `label:` in C and `:label:` in Lua.
        ["@include"] = { link = "@keyword" },
        -- ["@exception"] = {},

        --- Types
        -- ["@type"] = {},
        -- ["@type.builtin"] = { link = "@keyword" },
        -- ["@type.definition"] = {},
        ["@type.qualifier"] = { link = "@keyword" },

        -- ["@storageclass"] = {},
        ["@attribute"] = { link = "Function" },
        ["@field"] = { fg = theme.syntax.field }, -- For fields.
        ["@property"] = { link = "@field" },
        ["@annotation"] = { link = "Function" },

        --- Identifiers
        ["@variable"] = { fg = theme.syntax.variable },       -- Any variable name that does not have another highlight.
        ["@variable.builtin"] = { fg = theme.syntax.builtin }, -- Variable names that are defined by the languages, like `this` or `self`.
        -- ["@constant"] = {},
        ["@constant.builtin"] = { fg = theme.syntax.number },
        -- ["@constant.macro"] = {},

        ["@namespace"] = { fg = theme.syntax.namespace },
        ["@symbol"] = { fg = theme.syntax.func },

        --- Text
        ["@text"] = { fg = theme.ui.fg },
        ["@text.strong"] = { bold = true },
        ["@text.emphasis"] = { italic = true },
        ["@text.underline"] = { underline = true },
        ["@text.strike"] = { strikethrough = true },
        -- ["@text.title"] = {},
        ["@text.title.1"] = { fg = theme.syntax.h1, bold = true },
        ["@text.title.2"] = { fg = theme.syntax.h2, bold = true },
        ["@text.title.3"] = { fg = theme.syntax.h3, bold = true },
        ["@text.title.4"] = { fg = theme.syntax.h4, bold = true },
        ["@text.title.5"] = { fg = theme.syntax.h5, bold = true },
        ["@text.title.6"] = { fg = theme.syntax.h6, bold = true },
        ["@text.quote"] = { fg = theme.syntax.string },
        ["@text.uri"] = { fg = theme.syntax.link, underline = true },
        ["@text.math"] = { fg = theme.syntax.number },
        ["@text.environment"] = { fg = theme.ui.fg_accented },
        ["@text.environment.name"] = { fg = theme.syntax.global },
        ["@text.reference"] = { link = "Label" },

        ["@text.literal"] = { bg = theme.ui.bg_light, fg = theme.ui.fg_accented },
        ["@text.literal.block"] = { link = "@text.literal" },

        ["@text.todo.checked"] = { fg = theme.diag.ok.fg },
        ["@text.todo.unchecked"] = { fg = theme.diag.warn.fg },
        ["@text.note"] = { fg = theme.diag.hint.fg },
        ["@text.warning"] = { fg = theme.diag.warn.fg },
        ["@text.danger"] = { fg = theme.diag.error.fg },

        ["@text.diff.add"] = { link = "DiffAdd" },
        ["@text.diff.delete"] = { link = "DiffDelete" },

        --- Tags
        ["@tag"] = { fg = theme.syntax.statement },
        ["@tag.attribute"] = { fg = theme.syntax.func },
        ["@tag.delimiter"] = { fg = theme.syntax.delimiter },

        -- LSP Semantic Token Groups
        ["@lsp.type.boolean"] = { link = "@boolean" },
        ["@lsp.type.builtinType"] = { link = "@type.builtin" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
        ["@lsp.type.deriveHelper"] = { link = "@attribute" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
        ["@lsp.type.formatSpecifier"] = { link = "@punctuation.special" },
        ["@lsp.type.generic"] = { link = "@variable" },
        ["@lsp.type.interface"] = { link = "@type" },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.lifetime"] = { link = "@storageclass" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.typeAlias"] = { link = "@type.definition" },
        ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = theme.diag.error.fg },
        ["@lsp.type.variable"] = { link = "@variable" }, -- use treesitter styles for regular variables
        ["@lsp.typemod.class.constructorOrDestructor"] = { link = "@constructor" },
        ["@lsp.typemod.keyword.async"] = { link = "@keyword.coroutine" },
        ["@lsp.typemod.keyword.injected"] = { link = "@keyword" },
        ["@lsp.typemod.operator.injected"] = { link = "@operator" },
        ["@lsp.typemod.string.injected"] = { link = "@string" },
        ["@lsp.typemod.variable.callable"] = { link = "@function" },
        ["@lsp.typemod.variable.injected"] = { link = "@variable" },
        ["@lsp.typemod.variable.static"] = { fg = theme.syntax.static },
        ["@lsp.typemod.variable.globalScope"] = { fg = theme.syntax.global }, --(global variables)
        -- ["@lsp.typemod.variable.readOnly"] = { fg = theme.syntax.constant },
    }
end

return M
