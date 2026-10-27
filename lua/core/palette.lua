local white    = "#FFFFFF"
local color1   = "#CED3DE"
local color2   = "#969FB0"
local color3   = "#6C7689"
local color4   = "#4D576A"
local color5   = "#2A2D35"
local color_bg = "#1F2125"

local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
end

local apply = function()
    -- ==========================================
    -- INTERFACCIA (UI)
    -- ==========================================
    hl("Normal",       { fg = color1, bg = "none" })
    hl("NormalFloat",  { fg = color1, bg = color_bg })
    hl("ColorColumn",  { bg = color_bg })
    hl("Cursor",       { reverse = true })
    hl("CursorLine",   { bg = color_bg })
    hl("CursorColumn", { bg = color_bg })
    hl("Directory",    { fg = white, bold = true })
    hl("EndOfBuffer",  { fg = color_bg, bg = "none" })
    hl("ErrorMsg",     { fg = white, bg = color4, bold = true })
    hl("WarningMsg",   { fg = color1, bold = true })
    hl("Folded",       { fg = color4, bg = color_bg })
    hl("LineNr",       { fg = color4, bg = "none" })
    hl("CursorLineNr", { fg = white, bold = true, bg = color_bg })
    hl("MatchParen",   { fg = white, bg = color4, bold = true })
    hl("Pmenu",        { fg = color2, bg = color5 })
    hl("PmenuSel",     { fg = white, bg = color3, bold = true })
    hl("PmenuSbar",    { bg = color_bg })
    hl("PmenuThumb",   { bg = color3 })
    hl("PmenuShadow",  { bg = color_bg })
    hl("PmenuShadowThrough", { bg = color_bg })
    hl("Search",       { fg = color_bg, bg = color1, bold = true })
    hl("IncSearch",    { fg = color_bg, bg = white, bold = true })
    hl("CurSearch",    { fg = color_bg, bg = color1, bold = true })
    hl("SignColumn",   { bg = "none" })
    hl("StatusLine",   { fg = color1, bg = color5 })
    hl("StatusLineNC", { fg = color4, bg = color_bg })
    hl("TabLine",      { fg = color4, bg = color_bg })
    hl("TabLineSel",   { fg = white, bg = color5, bold = true })
    hl("Visual",       { bg = color4 })
    hl("WinSeparator", { fg = color_bg })
    hl("WinBar",       { fg = color1, bg = color5 })
    hl("WinBarNC",     { fg = color4, bg = color_bg })
    hl("QuickFixLine", { fg = color1, bg = color5 })
    hl("FloatShadow",  { bg = color_bg })
    hl("FloatShadowThrough", { bg = color_bg })

    -- ==========================================
    -- SINTASSI
    -- ==========================================

    hl("Comment",  { fg = color4, bold = true })
    hl("@comment", { fg = color4, bold = true })

    hl("Keyword",              { fg = white, bold = true })
    hl("@keyword",             { fg = white, bold = true })
    hl("@keyword.import",      { fg = white, bold = true })
    hl("@keyword.return",      { fg = white, bold = true })
    hl("@keyword.exception",   { fg = white, bold = true })
    hl("Statement",            { fg = white, bold = true })
    hl("Conditional",          { fg = white, bold = true })
    hl("@keyword.conditional", { fg = white, bold = true })
    hl("Repeat",               { fg = white, bold = true })
    hl("@keyword.repeat",      { fg = white, bold = true })

    hl("Function",          { fg = white })
    hl("@function",         { fg = white })
    hl("@function.builtin", { fg = white })
    hl("@function.call",    { fg = white })
    hl("@function.macro",   { fg = white })
    hl("@method",           { fg = white })
    hl("Type",              { fg = color2, bold = true })
    hl("@type",             { fg = color2, bold = true })
    hl("@type.builtin",     { fg = white })
    hl("@class",            { fg = white })
    hl("@constructor",      { fg = white })

    hl("Identifier",        { fg = color1 })
    hl("@variable",         { fg = color1 })
    hl("@variable.builtin", { fg = color1, bold = true })
    hl("@parameter",        { fg = color1 })
    hl("@property",         { fg = color1 })
    hl("@field",            { fg = color1 })
    hl("@attribute",        { fg = color2 })

    hl("String",         { fg = color2 })
    hl("@string",        { fg = color2 })
    hl("@string.escape", { fg = color1, bold = true })
    hl("@string.regex",  { fg = color1 })
    hl("Character",      { fg = color2 })
    hl("@character",     { fg = color2 })

    hl("Constant",          { fg = color2, bold = true })
    hl("@constant",         { fg = color2, bold = true })
    hl("@constant.builtin", { fg = color2, bold = true })
    hl("@constant.macro",   { fg = color2, bold = true })
    hl("Boolean",           { fg = white, bold = true })
    hl("@boolean",          { fg = white, bold = true })
    hl("Number",            { fg = white })
    hl("@number",           { fg = white })
    hl("Float",             { fg = white })
    hl("@number.float",     { fg = white })

    hl("Operator",               { fg = color3 })
    hl("@operator",              { fg = color3 })
    hl("Delimiter",              { fg = color3 })
    hl("@punctuation",           { fg = color3 })
    hl("@punctuation.bracket",   { fg = color3 })
    hl("@punctuation.delimiter", { fg = color3 })
    hl("@punctuation.special",   { fg = color3 })

    hl("PreProc",    { fg = color3 })
    hl("@include",   { fg = color3 })
    hl("Define",     { fg = color3 })
    hl("Special",    { fg = color3 })
    hl("@label",     { fg = color2 })
    hl("@namespace", { fg = color2 })
    hl("@module",    { fg = color2 })

    hl("Underlined",       { fg = color2, underline = true })
    hl("Todo",             { fg = white, bg = color4, bold = true })
    hl("Error",            { fg = white, bg = color4, bold = true })
    hl("NvimInternalError", { fg = white, bg = color4, bold = true })
    hl("Added",            { fg = color2 })
    hl("Changed",          { fg = color3 })
    hl("Removed",          { fg = color4 })
    hl("OkMsg",            { fg = color2, bold = true })

    -- ==========================================
    -- MESSAGES, PROMPT E COMMAND LINE
    -- ==========================================
    hl("ModeMsg",  { fg = color2, bold = true })
    hl("MsgArea",  { fg = color1, bg = "none" })
    hl("Question", { fg = white, bold = true })
    hl("Title",    { fg = white, bold = true })
    hl("MoreMsg",  { fg = color2, bold = true })

    -- ==========================================
    -- MARKUP
    -- ==========================================
    hl("@markup.heading",       { fg = white, bold = true })
    hl("@markup.bold",          { bold = true })
    hl("@markup.italic",        { fg = color1 })
    hl("@markup.strikethrough", { strikethrough = true })
    hl("@markup.link",          { fg = color2, underline = true })
    hl("@markup.link.url",      { fg = color3, underline = true })
    hl("@markup.raw",           { fg = color3 })
    hl("@markup.list",          { fg = color3, bold = true })

    hl("@tag",           { fg = white, bold = true })
    hl("@tag.attribute", { fg = color2 })
    hl("@tag.delimiter", { fg = color3 })

    -- ==========================================
    -- PLUGIN
    -- ==========================================

    hl("MasonNormal", { fg = color1, bg = color_bg })
    hl("MasonBackdrop", { bg = color_bg })
    hl("MasonHeader", { fg = white, bg = color4, bold = true })
    hl("MasonHeaderSecondary", { fg = color_bg, bg = color3, bold = true })
    hl("MasonHeading", { fg = white, bold = true })
    hl("MasonHighlight", { fg = white })
    hl("MasonHighlightBlock", { fg = color_bg, bg = color2 })
    hl("MasonHighlightBlockBold", { fg = color_bg, bg = white, bold = true })
    hl("MasonHighlightSecondary", { fg = color2 })
    hl("MasonHighlightBlockSecondary", { fg = color_bg, bg = color3 })
    hl("MasonHighlightBlockBoldSecondary", { fg = color_bg, bg = color3, bold = true })
    hl("MasonMuted", { fg = color4 })
    hl("MasonMutedBlock", { fg = color4, bg = color5 })
    hl("MasonMutedBlockBold", { fg = color4, bg = color5, bold = true })
    hl("MasonError", { fg = white, bg = color4, bold = true })

    hl("LazyNormal", { fg = color1, bg = color_bg })
    hl("LazyBackdrop", { bg = color_bg })
    hl("LazyH1", { fg = white, bg = color5, bold = true })
    hl("LazyButton", { bg = color5 })
    hl("LazyButtonActive", { fg = white, bg = color4, bold = true })
    hl("LazyReasonPlugin", { fg = color2 })
    hl("LazyDir", { fg = color3 })
    hl("LazyUrl", { fg = color_bg })
    hl("LazyCommit", { fg = color3 })
    hl("LazyProgressDone", { fg = white, bold = true })
    hl("LazyProgressTodo", { fg = color4 })

    hl("TelescopeNormal", { fg = color1, bg = color_bg })
    hl("TelescopeBorder", { fg = color_bg, bg = color_bg })
    hl("TelescopePromptBorder", { fg = color_bg, bg = color_bg })
    hl("TelescopeResultsBorder", { fg = color_bg, bg = color_bg })
    hl("TelescopePreviewBorder", { fg = color_bg, bg = color_bg })
    hl("TelescopePromptNormal", { fg = white, bg = color_bg })
    hl("TelescopePromptPrefix", { fg = white })
    hl("TelescopeSelection", { bg = color5, bold = true })
    hl("TelescopeSelectionCaret", { fg = white, bg = color5 })
    hl("TelescopeMatching", { fg = white, bold = true, reverse = true })

    hl("NvimTreeNormal", { fg = color1, bg = "none" })
    hl("NvimTreeWinSeparator", { fg = color4 })
    hl("NvimTreeIndentMarker", { fg = color4 })
    hl("NvimTreeRootFolder", { fg = white, bold = true })
    hl("NvimTreeFolderIcon", { fg = color3 })
    hl("NvimTreeFileIcon", { fg = color2 })
    hl("NvimTreeGitDirty", { fg = color2 })
    hl("NvimTreeGitNew", { fg = color1 })
    hl("NvimTreeGitDeleted", { fg = color4 })
    hl("NvimTreeOpenedHL", { fg = white, bold = true })
    hl("NvimTreeSpecialFile", { fg = white, underline = true })
    hl("NvimTreeWindowPicker", { fg = white, bg = color3, bold = true })

    hl("GitSignsAdd", { fg = color2 })
    hl("GitSignsChange", { fg = color3 })
    hl("GitSignsDelete", { fg = color4 })

    hl("DiagnosticError", { fg = white, bold = true })
    hl("DiagnosticWarn", { fg = color1, bold = true })
    hl("DiagnosticInfo", { fg = color2 })
    hl("DiagnosticHint", { fg = color3 })
    hl("DiagnosticOk", { fg = color2 })
    hl("DiagnosticUnderlineError", { sp = white, underline = true })
    hl("DiagnosticUnderlineWarn", { sp = color1, underline = true })
    hl("DiagnosticUnderlineInfo", { sp = color2, underline = true })
    hl("DiagnosticUnderlineHint", { sp = color3, underline = true })
    hl("DiagnosticUnderlineOk", { sp = color2, underline = true })
    hl("DiagnosticDeprecated", { sp = color1, strikethrough = true })

    hl("CmpItemAbbr", { fg = color1 })
    hl("CmpItemAbbrDeprecated", { fg = color4, strikethrough = true })
    hl("CmpItemAbbrDeprecatedDefault", { fg = color4 })
    hl("CmpItemAbbrMatch", { fg = white, bold = true })
    hl("CmpItemAbbrMatchFuzzy", { fg = white, bold = true })
    hl("CmpItemKind", { fg = color3 })
    hl("CmpItemKindDefault", { fg = color3 })
    hl("CmpItemKindIcon", { fg = color3 })
    hl("CmpItemKindIconDefault", { fg = color3 })
    hl("CmpItemMenu", { fg = color4 })

    hl("DevIconDefault", { fg = color1 })

    hl("dbui_connection_ok", { fg = color2 })
    hl("dbui_connection_error", { fg = white })

    hl("lualine_transparent", { fg = color1, bg = color_bg })

    -- ==========================================
    -- EDGE CASES
    -- ==========================================

    hl("NonText",     { fg = color_bg })
    hl("SpecialKey",  { fg = color_bg })
    hl("Conceal",     { fg = color4, bg = "none" })
    hl("FloatBorder", { fg = color_bg, bg = color_bg })
    hl("FloatTitle",  { fg = white, bold = true })

    hl("DiffAdd",    { fg = color_bg, bg = color2 })
    hl("DiffChange", { fg = color_bg, bg = color3 })
    hl("DiffDelete", { fg = color4, bg = color_bg })
    hl("DiffText",   { fg = color_bg, bg = white, bold = true })

    hl("LspReferenceText", { bg = color5 })
    hl("LspReferenceRead", { bg = color5 })
    hl("LspReferenceWrite", { bg = color5, bold = true })

    hl("SpellBad",   { undercurl = true, sp = white })
    hl("SpellCap",   { undercurl = true, sp = color1 })
    hl("SpellLocal", { undercurl = true, sp = color2 })
    hl("SpellRare",  { undercurl = true, sp = color3 })

    hl("RedrawDebugClear",     { bg = color3 })
    hl("RedrawDebugComposed",  { bg = color2 })
    hl("RedrawDebugRecompose", { bg = color4 })


    -- ==========================================
    -- MARKDOWN E LATEX
    -- ==========================================

    hl("RenderMarkdownMath", { fg = color3, bold = true})

    hl("RenderMarkdownH1", { fg = white, bg = color5, bold = true })
    hl("RenderMarkdownH2", { fg = color2, bold = true })
    hl("RenderMarkdownH3", { fg = color3, bold = true })
    hl("RenderMarkdownH4", { fg = color4, bold = true })
    hl("RenderMarkdownH5", { fg = color4 })
    hl("RenderMarkdownH6", { fg = color4 })

    hl("RenderMarkdownCode", { fg = color1, bold = true, bg = color3 })
    hl("RenderMarkdownCodeInline", { fg = color1, bold = true, bg = color3 })

    hl("RenderMarkdownCode", { fg = color2, bg = color5 })
    hl("RenderMarkdownCodeInline", { fg = color2, bg = color5 })
    hl("RenderMarkdownQuote", { fg = color3, italic = true })
    hl("RenderMarkdownBullet", { fg = color3 })

end
apply()

vim.api.nvim_create_autocmd({ "ColorScheme", "FileType" }, {
    callback = function()
        vim.schedule(apply)
    end,
})

return {
    white = white,
    color1 = color1,
    color2 = color2,
    color3 = color3,
    color4 = color4,
    color5 = color5,
    color_bg = color_bg,
}
