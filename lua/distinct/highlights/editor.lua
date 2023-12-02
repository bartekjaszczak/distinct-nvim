local M = {}

function M.get_highlights(theme)
    return {
        -- ColorColumn	Used for the columns set with 'colorcolumn'.
        ColorColumn = { bg = theme.ui.bg_normal },
        -- Conceal		Placeholder characters substituted for concealed text (see 'conceallevel').
        Conceal = { fg = theme.none },
        -- CurSearch	Used for highlighting a search pattern under the cursor (see 'hlsearch').
        CurSearch = { fg = theme.ui.bg_normal, bg = theme.ui.select.search_bg, bold = true },
        -- Cursor		Character under the cursor.
        Cursor = { fg = theme.ui.bg_dark, bg = theme.ui.select.search_bg },
        -- lCursor		Character under the cursor when |language-mapping| is used (see 'guicursor').
        lCursor = { link = "Cursor" },
        -- CursorIM	Like Cursor, but used when in IME mode.
        CursorIM = { link = "Cursor" },
        -- CursorColumn	Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorColumn = { link = "CursorLine" },
        -- CursorLine	Screen-line at the cursor, when 'cursorline' is set. Low-priority if foreground (ctermfg OR guifg) is not set.
        CursorLine = { bg = theme.ui.bg_normal },
        -- Directory	Directory names (and other special names in listings).
        Directory = { fg = theme.dir },
        -- DiffAdd		Diff mode: Added line. |diff.txt|
        DiffAdd = { bg = theme.git.add, fg = theme.ui.bg_normal },
        -- DiffChange	Diff mode: Changed line. |diff.txt|
        DiffChange = { bg = theme.git.change, fg = theme.ui.bg_normal },
        -- DiffDelete	Diff mode: Deleted line. |diff.txt|
        DiffDelete = { bg = theme.git.delete, fg = theme.ui.bg_normal },
        -- DiffText	Diff mode: Changed text within a changed line. |diff.txt|
        DiffText = { bg = theme.git.delete },
        -- EndOfBuffer	Filler lines (~) after the end of the buffer. By default, this is highlighted like |hl-NonText|.
        EndOfBuffer = { fg = theme.ui.bg_very_light },
        -- TermCursor	Cursor in a focused terminal.
        -- TermCursorNC	Cursor in an unfocused terminal.
        -- ErrorMsg	Error messages on the command line.
        ErrorMsg = { fg = theme.diag.error.fg, bold = true },
        -- WinSeparator	Separators between window splits.
        WinSeparator = { fg = theme.ui.fg_accented, bold = true },
        VertSplit = { link = "WinSeparator" },
        -- Folded		Line used for closed folds.
        Folded = { fg = theme.ui.fg, bg = theme.ui.bg_very_dark },
        -- FoldColumn	'foldcolumn'
        FoldColumn = { fg = theme.ui.fg, bg = theme.ui.bg_dark },
        -- SignColumn	Column where |signs| are displayed.
        SignColumn = { fg = theme.ui.fg, bg = theme.ui.bg_dark },
        -- IncSearch	'incsearch' highlighting; also used for the text replaced with ":s///c".
        IncSearch = { link = "CurSearch" },
        -- Substitute	|:substitute| replacement text highlighting.
        Substitute = { link = "CurSearch" },
        -- LineNr		Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
        LineNr = { fg = theme.ui.fg, bg = theme.ui.bg_dark },
        -- LineNrAbove	Line number for when the 'relativenumber' option is set, above the cursor line.
        -- LineNrBelow	Line number for when the 'relativenumber' option is set, below the cursor line.
        -- CursorLineNr	Like LineNr when 'cursorline' is set and 'cursorlineopt' contains "number" or is "both", for the cursor line.
        CursorLineNr = { fg = theme.ui.select.search_bg, bg = theme.ui.bg_dark, bold = true },
        -- CursorLineFold	Like FoldColumn when 'cursorline' is set for the cursor line.
        -- CursorLineSign	Like SignColumn when 'cursorline' is set for the cursor line.
        -- MatchParen	Character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
        MatchParen = { fg = theme.match_paren, bold = true },
        -- ModeMsg		'showmode' message (e.g., "-- INSERT --").
        ModeMsg = { fg = theme.ui.fg, bold = true },
        -- MsgArea		Area for messages and cmdline.
        MsgArea = { fg = theme.ui.fg, bg = theme.ui.bg_normal },
        -- MsgSeparator	Separator for scrolled messages |msgsep|.
        MsgSeparator = { fg = theme.ui.fg, bg = theme.ui.bg_normal },
        -- MoreMsg		|more-prompt|
        MoreMsg = { fg = theme.diag.info.fg },
        -- NonText		'@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
        NonText = { fg = theme.non_text },
        -- Normal		Normal text.
        Normal = { fg = theme.ui.fg, bg = theme.ui.bg_dark },
        -- NormalFloat	Normal text in floating windows.
        NormalFloat = { fg = theme.ui.float.fg, bg = theme.ui.float.bg },
        -- FloatBorder	Border of floating windows.
        FloatBorder = { fg = theme.ui.float.border, bg = theme.ui.float.bg },
        -- FloatTitle	Title of floating windows.
        FloatTitle = { fg = theme.ui.float.title, bg = theme.ui.float.bg, bold = true },
        -- FloatFooter	Footer of floating windows.
        FloatFooter = { fg = theme.ui.float.fg, bg = theme.ui.float.bg },
        -- NormalNC	Normal text in non-current windows.
        NormalNC = { link = "Normal" },
        -- Pmenu		Popup menu: Normal item.
        Pmenu = { fg = theme.ui.fg, bg = theme.ui.bg_light },
        -- PmenuSel	Popup menu: Selected item.
        PmenuSel = { fg = theme.ui.bg_dark, bg = theme.ui.select.selected_item },
        -- PmenuSbar	Popup menu: Scrollbar.
        PmenuSbar = { bg = theme.ui.bg_normal },
        -- PmenuThumb	Popup menu: Thumb of the scrollbar.
        PmenuThumb = { bg = theme.ui.fg_accented },
        -- Question	|hit-enter| prompt and yes/no questions.
        Question = { link = "MoreMsg" },
        -- QuickFixLine	Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
        QuickFixLine = { link = "CurSearch" },
        -- Search		Last search pattern highlighting (see 'hlsearch'). Also used for similar items that need to stand out.
        Search = { link = "CurSearch" },
        -- SpecialKey	Unprintable characters: Text displayed differently from what it really is. But not 'listchars' whitespace. |hl-Whitespace|
        SpecialKey = { fg = theme.ui.bg_very_light },
        -- SpellBad	Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise.
        SpellBad = { undercurl = true, sp = theme.diag.error.fg },
        -- SpellCap	Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
        SpellCap = { undercurl = true, sp = theme.diag.hint.fg },
        -- SpellLocal	Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
        SpellLocal = { undercurl = true, sp = theme.diag.hint.fg },
        -- SpellRare	Word that is recognized by the spellchecker as one that is hardly ever used. |spell| Combined with the highlighting used otherwise.
        SpellRare = { undercurl = true, sp = theme.diag.hint.fg },
        -- StatusLine	Status line of current window.
        StatusLine = { fg = theme.ui.fg_accented, bg = theme.ui.bg_very_dark },
        -- StatusLineNC	Status lines of not-current windows. Note: If this is equal to "StatusLine", Vim will use "^^^" in the status line of the current window.
        StatusLineNC = { fg = theme.ui.fg, bg = theme.ui.bg_very_dark },
        -- TabLine		Tab pages line, not active tab page label.
        TabLine = { bg = theme.ui.bg_normal, fg = theme.ui.bg_very_light },
        -- TabLineFill	Tab pages line, where there are no labels.
        TabLineFill = { bg = theme.ui.bg_dark },
        -- TabLineSel	Tab pages line, active tab page label.
        TabLineSel = { fg = theme.ui.fg_accented, bg = theme.ui.bg_light, bold = true },
        -- Title		Titles for output from ":set all", ":autocmd" etc.
        Title = { fg = theme.ui.fg_title, bold = true },
        -- Visual		Visual mode selection.
        Visual = { bg = theme.ui.select.selected_text, fg = theme.ui.bg_normal },
        -- VisualNOS	Visual mode selection when vim is "Not Owning the Selection".
        VisualNOS = { link = "Visual" },
        -- WarningMsg	Warning messages.
        WarningMsg = { fg = theme.diag.warn.fg },
        -- Whitespace	"nbsp", "space", "tab", "multispace", "lead" and "trail" in 'listchars'.
        Whitespace = { fg = theme.ui.bg_normal },
        -- WildMenu	Current match in 'wildmenu' completion.
        WildMenu = { link = "Pmenu" },
        -- WinBar		Window bar of current window.
        Winbar = { fg = theme.ui.bg_normal, bg = "NONE" },
        -- WinBarNC	Window bar of not-current windows.
        WinbarNC = { fg = theme.ui.bg_normal, bg = "NONE" },

        -- SignColumnSB = { link = "SignColumn" },
        -- NormalSB = { link = "Normal" },

        healthError = { fg = theme.diag.error.fg },
        healthSuccess = { fg = theme.diag.ok.fg },
        healthWarning = { fg = theme.diag.warn.fg },
    }
end

return M
