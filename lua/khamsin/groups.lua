-- khamsin/groups.lua
-- Defines all highlight groups: editor UI, traditional syntax,
-- Treesitter (@) groups, and LSP semantic token (@lsp.*) groups.

local M = {}

function M.setup(p)
  local hl = function(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- ─────────────────────────────────────────────────────────────
  --  EDITOR / UI
  -- ─────────────────────────────────────────────────────────────
  hl("Normal",           { fg = p.papyrus,   bg = p.black })
  hl("NormalNC",         { fg = p.papyrus,   bg = p.tomb })
  hl("NormalFloat",      { fg = p.papyrus,   bg = p.obsidian })
  hl("FloatBorder",      { fg = p.sandstone, bg = p.obsidian })
  hl("FloatTitle",       { fg = p.gold,      bg = p.obsidian, bold = true })

  hl("Cursor",           { fg = p.black,     bg = p.papyrus })
  hl("CursorIM",         { fg = p.black,     bg = p.lapis })
  hl("CursorLine",       { bg = p.shadow })
  hl("CursorColumn",     { bg = p.shadow })
  hl("ColorColumn",      { bg = p.obsidian })

  hl("LineNr",           { fg = p.sandstone })
  hl("CursorLineNr",     { fg = p.gold,      bold = true })
  hl("SignColumn",       { fg = p.sandstone, bg = p.black })
  hl("FoldColumn",       { fg = p.sandstone, bg = p.black })
  hl("Folded",           { fg = p.stone,     bg = p.obsidian, italic = true })

  hl("StatusLine",       { fg = p.linen,     bg = p.obsidian })
  hl("StatusLineNC",     { fg = p.dust,      bg = p.tomb })
  hl("TabLine",          { fg = p.stone,     bg = p.obsidian })
  hl("TabLineSel",       { fg = p.gold,      bg = p.shadow, bold = true })
  hl("TabLineFill",      { bg = p.tomb })

  hl("WinSeparator",     { fg = p.sandstone })
  hl("VertSplit",        { fg = p.sandstone })

  hl("Pmenu",            { fg = p.papyrus,   bg = p.obsidian })
  hl("PmenuSel",         { fg = p.black,     bg = p.gold })
  hl("PmenuSbar",        { bg = p.shadow })
  hl("PmenuThumb",       { bg = p.sandstone })
  hl("PmenuKind",        { fg = p.lapis,     bg = p.obsidian })
  hl("PmenuKindSel",     { fg = p.black,     bg = p.gold })
  hl("PmenuExtra",       { fg = p.stone,     bg = p.obsidian })

  hl("Search",           { fg = p.black,     bg = p.gold })
  hl("IncSearch",        { fg = p.black,     bg = p.terracotta })
  hl("CurSearch",        { fg = p.black,     bg = p.sunset })
  hl("Substitute",       { fg = p.black,     bg = p.malachite })

  hl("Visual",           { bg = p.shadow })
  hl("VisualNOS",        { bg = p.shadow })
  hl("MatchParen",       { fg = p.sunset,    bold = true, underline = true })

  hl("NonText",          { fg = p.sandstone })
  hl("SpecialKey",       { fg = p.dust })
  hl("Whitespace",       { fg = p.sandstone })
  hl("EndOfBuffer",      { fg = p.sandstone })
  hl("Conceal",          { fg = p.stone })

  hl("Directory",        { fg = p.lapis })
  hl("Title",            { fg = p.gold,      bold = true })
  hl("Question",         { fg = p.malachite })
  hl("MoreMsg",          { fg = p.malachite })
  hl("ModeMsg",          { fg = p.papyrus,   bold = true })
  hl("ErrorMsg",         { fg = p.carnelian })
  hl("WarningMsg",       { fg = p.warn })

  hl("SpellBad",         { undercurl = true, sp = p.carnelian })
  hl("SpellCap",         { undercurl = true, sp = p.lapis })
  hl("SpellRare",        { undercurl = true, sp = p.kohl })
  hl("SpellLocal",       { undercurl = true, sp = p.faience })

  hl("Winsbar",          { fg = p.linen,     bg = p.obsidian })
  hl("WinsbarNC",        { fg = p.dust,      bg = p.tomb })

  -- ─────────────────────────────────────────────────────────────
  --  DIAGNOSTICS  (:h diagnostic-highlights)
  -- ─────────────────────────────────────────────────────────────
  hl("DiagnosticError",            { fg = p.carnelian })
  hl("DiagnosticWarn",             { fg = p.warn })
  hl("DiagnosticInfo",             { fg = p.info })
  hl("DiagnosticHint",             { fg = p.hint })
  hl("DiagnosticOk",               { fg = p.malachite })

  hl("DiagnosticUnderlineError",   { undercurl = true, sp = p.carnelian })
  hl("DiagnosticUnderlineWarn",    { undercurl = true, sp = p.warn })
  hl("DiagnosticUnderlineInfo",    { undercurl = true, sp = p.info })
  hl("DiagnosticUnderlineHint",    { undercurl = true, sp = p.hint })

  hl("DiagnosticVirtualTextError", { fg = p.carnelian, bg = p.tomb, italic = true })
  hl("DiagnosticVirtualTextWarn",  { fg = p.warn,      bg = p.tomb, italic = true })
  hl("DiagnosticVirtualTextInfo",  { fg = p.info,      bg = p.tomb, italic = true })
  hl("DiagnosticVirtualTextHint",  { fg = p.hint,      bg = p.tomb, italic = true })

  hl("DiagnosticSignError",        { fg = p.carnelian, bg = p.black })
  hl("DiagnosticSignWarn",         { fg = p.warn,      bg = p.black })
  hl("DiagnosticSignInfo",         { fg = p.info,      bg = p.black })
  hl("DiagnosticSignHint",         { fg = p.hint,      bg = p.black })

  -- ─────────────────────────────────────────────────────────────
  --  TRADITIONAL SYNTAX GROUPS  (:h group-name)
  -- ─────────────────────────────────────────────────────────────
  hl("Comment",        { fg = p.stone,      italic = true })
  hl("Constant",       { fg = p.terracotta })
  hl("String",         { fg = p.malachite })
  hl("Character",      { fg = p.malachite })
  hl("Number",         { fg = p.terracotta })
  hl("Float",          { fg = p.terracotta })
  hl("Boolean",        { fg = p.terracotta })

  hl("Identifier",     { fg = p.papyrus })
  hl("Function",       { fg = p.lapis })

  hl("Statement",      { fg = p.gold })
  hl("Conditional",    { fg = p.gold })
  hl("Repeat",         { fg = p.gold })
  hl("Label",          { fg = p.gold })
  hl("Operator",       { fg = p.copper })
  hl("Keyword",        { fg = p.gold })
  hl("Exception",      { fg = p.carnelian })

  hl("PreProc",        { fg = p.faience })
  hl("Include",        { fg = p.faience })
  hl("Define",         { fg = p.faience })
  hl("Macro",          { fg = p.faience,    bold = true })
  hl("PreCondit",      { fg = p.faience })

  hl("Type",           { fg = p.pale_gold })
  hl("StorageClass",   { fg = p.gold,       italic = true })
  hl("Structure",      { fg = p.pale_gold })
  hl("Typedef",        { fg = p.pale_gold })

  hl("Special",        { fg = p.sunset })
  hl("SpecialChar",    { fg = p.faience })
  hl("Tag",            { fg = p.terracotta })
  hl("Delimiter",      { fg = p.dust })
  hl("SpecialComment", { fg = p.stone,      bold = true })
  hl("Debug",          { fg = p.sunset })

  hl("Underlined",     { underline = true })
  hl("Ignore",         { fg = p.dust })
  hl("Error",          { fg = p.carnelian })
  hl("Todo",           { fg = p.black,      bg = p.gold,   bold = true })

  -- ─────────────────────────────────────────────────────────────
  --  TREESITTER  (:h treesitter-highlight-groups)
  -- ─────────────────────────────────────────────────────────────

  -- Variables
  hl("@variable",                { fg = p.papyrus })
  hl("@variable.builtin",        { fg = p.sunset,     italic = true })
  hl("@variable.parameter",      { fg = p.linen })
  hl("@variable.parameter.builtin", { fg = p.linen,   italic = true })
  hl("@variable.member",         { fg = p.pale_gold })

  -- Constants
  hl("@constant",                { fg = p.terracotta })
  hl("@constant.builtin",        { fg = p.terracotta, italic = true })
  hl("@constant.macro",          { fg = p.faience,    bold = true })

  -- Strings
  hl("@string",                  { fg = p.malachite })
  hl("@string.documentation",    { fg = p.malachite,  italic = true })
  hl("@string.regexp",           { fg = p.faience })
  hl("@string.escape",           { fg = p.faience,    bold = true })
  hl("@string.special",          { fg = p.faience })
  hl("@string.special.symbol",   { fg = p.terracotta })
  hl("@string.special.url",      { fg = p.lapis,      underline = true })
  hl("@string.special.path",     { fg = p.lapis })

  -- Characters / numbers
  hl("@character",               { fg = p.malachite })
  hl("@character.special",       { fg = p.faience })
  hl("@number",                  { fg = p.terracotta })
  hl("@number.float",            { fg = p.terracotta })
  hl("@boolean",                 { fg = p.terracotta })

  -- Functions
  hl("@function",                { fg = p.lapis })
  hl("@function.builtin",        { fg = p.sunset })
  hl("@function.call",           { fg = p.lapis })
  hl("@function.macro",          { fg = p.faience,    bold = true })
  hl("@function.method",         { fg = p.lapis })
  hl("@function.method.call",    { fg = p.lapis })

  hl("@constructor",             { fg = p.pale_gold })

  -- Keywords
  hl("@keyword",                 { fg = p.gold })
  hl("@keyword.coroutine",       { fg = p.gold,       italic = true })
  hl("@keyword.function",        { fg = p.gold })
  hl("@keyword.operator",        { fg = p.copper })
  hl("@keyword.import",          { fg = p.faience })
  hl("@keyword.type",            { fg = p.pale_gold })
  hl("@keyword.modifier",        { fg = p.gold,       italic = true })
  hl("@keyword.repeat",          { fg = p.gold })
  hl("@keyword.return",          { fg = p.gold,       italic = true })
  hl("@keyword.debug",           { fg = p.sunset })
  hl("@keyword.exception",       { fg = p.carnelian })
  hl("@keyword.conditional",     { fg = p.gold })
  hl("@keyword.conditional.ternary", { fg = p.copper })
  hl("@keyword.directive",       { fg = p.faience })
  hl("@keyword.directive.define",{ fg = p.faience,    bold = true })

  -- Types
  hl("@type",                    { fg = p.pale_gold })
  hl("@type.builtin",            { fg = p.pale_gold,  italic = true })
  hl("@type.definition",         { fg = p.pale_gold,  bold = true })
  hl("@type.qualifier",          { fg = p.gold,       italic = true })

  -- Attributes / decorators
  hl("@attribute",               { fg = p.kohl })
  hl("@attribute.builtin",       { fg = p.kohl,       italic = true })
  hl("@property",                { fg = p.pale_gold })

  -- Operators / punctuation
  hl("@operator",                { fg = p.copper })
  hl("@punctuation.bracket",     { fg = p.dust })
  hl("@punctuation.delimiter",   { fg = p.dust })
  hl("@punctuation.special",     { fg = p.faience })

  -- Namespaces / modules
  hl("@module",                  { fg = p.faience })
  hl("@module.builtin",          { fg = p.faience,    italic = true })
  hl("@namespace",               { link = "@module" })
  hl("@label",                   { fg = p.gold })

  -- Comments
  hl("@comment",                 { fg = p.stone,      italic = true })
  hl("@comment.documentation",   { fg = p.stone,      italic = true })
  hl("@comment.error",           { fg = p.black,      bg = p.carnelian, bold = true })
  hl("@comment.warning",         { fg = p.black,      bg = p.warn,      bold = true })
  hl("@comment.todo",            { fg = p.black,      bg = p.gold,      bold = true })
  hl("@comment.note",            { fg = p.black,      bg = p.lapis,     bold = true })

  -- Markup (markdown, etc.)
  hl("@markup.strong",           { bold = true })
  hl("@markup.italic",           { italic = true })
  hl("@markup.strikethrough",    { strikethrough = true })
  hl("@markup.underline",        { underline = true })
  hl("@markup.heading",          { fg = p.gold,       bold = true })
  hl("@markup.heading.1",        { fg = p.gold,       bold = true })
  hl("@markup.heading.2",        { fg = p.pale_gold,  bold = true })
  hl("@markup.heading.3",        { fg = p.lapis,      bold = true })
  hl("@markup.heading.4",        { fg = p.faience,    bold = true })
  hl("@markup.heading.5",        { fg = p.malachite,  bold = true })
  hl("@markup.heading.6",        { fg = p.linen })
  hl("@markup.quote",            { fg = p.stone,      italic = true })
  hl("@markup.math",             { fg = p.faience })
  hl("@markup.link",             { fg = p.lapis,      underline = true })
  hl("@markup.link.label",       { fg = p.pale_gold })
  hl("@markup.link.url",         { fg = p.lapis,      underline = true, italic = true })
  hl("@markup.raw",              { fg = p.malachite,  bg = p.tomb })
  hl("@markup.raw.block",        { fg = p.malachite })
  hl("@markup.list",             { fg = p.terracotta })
  hl("@markup.list.checked",     { fg = p.malachite })
  hl("@markup.list.unchecked",   { fg = p.dust })

  -- HTML / JSX tags
  hl("@tag",                     { fg = p.terracotta })
  hl("@tag.builtin",             { fg = p.terracotta, italic = true })
  hl("@tag.attribute",           { fg = p.pale_gold })
  hl("@tag.delimiter",           { fg = p.dust })

  -- Diff
  hl("@diff.plus",               { fg = p.malachite })
  hl("@diff.minus",              { fg = p.carnelian })
  hl("@diff.delta",              { fg = p.warn })

  -- ─────────────────────────────────────────────────────────────
  --  LSP SEMANTIC TOKENS  (:h lsp-semantic_tokens)
  --  These override treesitter. Link to @ groups for consistency.
  -- ─────────────────────────────────────────────────────────────

  -- Types
  hl("@lsp.type.class",          { link = "@type" })
  hl("@lsp.type.decorator",      { link = "@attribute" })
  hl("@lsp.type.enum",           { link = "@type" })
  hl("@lsp.type.enumMember",     { link = "@constant" })
  hl("@lsp.type.event",          { fg = p.sunset })
  hl("@lsp.type.function",       { link = "@function" })
  hl("@lsp.type.interface",      { fg = p.pale_gold, italic = true })
  hl("@lsp.type.keyword",        { link = "@keyword" })
  hl("@lsp.type.macro",          { link = "@constant.macro" })
  hl("@lsp.type.method",         { link = "@function.method" })
  hl("@lsp.type.modifier",       { link = "@keyword.modifier" })
  hl("@lsp.type.namespace",      { link = "@module" })
  hl("@lsp.type.number",         { link = "@number" })
  hl("@lsp.type.operator",       { link = "@operator" })
  hl("@lsp.type.parameter",      { link = "@variable.parameter" })
  hl("@lsp.type.property",       { link = "@variable.member" })
  hl("@lsp.type.regexp",         { link = "@string.regexp" })
  hl("@lsp.type.string",         { link = "@string" })
  hl("@lsp.type.struct",         { link = "@type" })
  hl("@lsp.type.type",           { link = "@type" })
  hl("@lsp.type.typeParameter",  { fg = p.pale_gold, italic = true })
  hl("@lsp.type.variable",       { link = "@variable" })
  hl("@lsp.type.comment",        { link = "@comment" })
  hl("@lsp.type.selfParameter",  { link = "@variable.builtin" })
  hl("@lsp.type.builtinType",    { link = "@type.builtin" })
  hl("@lsp.type.escapeSequence", { link = "@string.escape" })
  hl("@lsp.type.formatSpecifier",{ link = "@punctuation.special" })
  hl("@lsp.type.generic",        { fg = p.linen })
  hl("@lsp.type.lifetime",       { fg = p.faience, italic = true })  -- rust lifetimes
  hl("@lsp.type.unresolvedReference", { fg = p.carnelian, undercurl = true, sp = p.carnelian })

  -- Modifiers — stacked on top of type highlights
  hl("@lsp.mod.abstract",        { italic = true })
  hl("@lsp.mod.async",           { italic = true })
  hl("@lsp.mod.declaration",     { bold = true })
  hl("@lsp.mod.defaultLibrary",  { italic = true })
  hl("@lsp.mod.deprecated",      { strikethrough = true })
  hl("@lsp.mod.documentation",   { italic = true })
  hl("@lsp.mod.modification",    { })
  hl("@lsp.mod.readonly",        { italic = true })
  hl("@lsp.mod.static",          { italic = true })

  -- Language-specific overrides
  -- Rust: differentiate types that carry semantic meaning
  hl("@lsp.type.namespace.rust",   { fg = p.faience })
  hl("@lsp.type.macro.rust",       { fg = p.faience,   bold = true })
  -- Python: type hints from pyright/pylsp
  hl("@lsp.type.class.python",     { link = "@type" })
  hl("@lsp.type.parameter.python", { link = "@variable.parameter" })

  -- ─────────────────────────────────────────────────────────────
  --  GIT / DIFF
  -- ─────────────────────────────────────────────────────────────
  hl("DiffAdd",      { fg = p.malachite,  bg = "#0d1f12" })
  hl("DiffChange",   { fg = p.warn,       bg = "#1f190a" })
  hl("DiffDelete",   { fg = p.carnelian,  bg = "#1f0d0d" })
  hl("DiffText",     { fg = p.papyrus,    bg = "#332a10" })
  hl("Added",        { fg = p.malachite })
  hl("Changed",      { fg = p.warn })
  hl("Removed",      { fg = p.carnelian })

  -- ─────────────────────────────────────────────────────────────
  --  POPULAR PLUGIN SUPPORT
  -- ─────────────────────────────────────────────────────────────

  -- nvim-cmp
  hl("CmpItemAbbr",           { fg = p.papyrus })
  hl("CmpItemAbbrDeprecated", { fg = p.dust,     strikethrough = true })
  hl("CmpItemAbbrMatch",      { fg = p.gold,     bold = true })
  hl("CmpItemAbbrMatchFuzzy", { fg = p.gold })
  hl("CmpItemKind",           { fg = p.lapis })
  hl("CmpItemMenu",           { fg = p.stone })

  -- Telescope
  hl("TelescopeBorder",       { fg = p.sandstone, bg = p.obsidian })
  hl("TelescopeNormal",       { fg = p.papyrus,   bg = p.obsidian })
  hl("TelescopePromptBorder", { fg = p.gold,      bg = p.obsidian })
  hl("TelescopePromptNormal", { fg = p.papyrus,   bg = p.obsidian })
  hl("TelescopePromptPrefix", { fg = p.gold })
  hl("TelescopeSelection",    { bg = p.shadow })
  hl("TelescopeSelectionCaret",{ fg = p.gold })
  hl("TelescopeMatching",     { fg = p.gold,      bold = true })

  -- nvim-tree / neo-tree
  hl("NvimTreeNormal",        { fg = p.papyrus,   bg = p.tomb })
  hl("NvimTreeFolderIcon",    { fg = p.gold })
  hl("NvimTreeFolderName",    { fg = p.lapis })
  hl("NvimTreeOpenedFolderName", { fg = p.lapis,  bold = true })
  hl("NvimTreeRootFolder",    { fg = p.gold,      bold = true })
  hl("NvimTreeGitDirty",      { fg = p.warn })
  hl("NvimTreeGitNew",        { fg = p.malachite })
  hl("NvimTreeGitDeleted",    { fg = p.carnelian })

  -- gitsigns
  hl("GitSignsAdd",           { fg = p.malachite, bg = p.black })
  hl("GitSignsChange",        { fg = p.warn,      bg = p.black })
  hl("GitSignsDelete",        { fg = p.carnelian, bg = p.black })

  -- indent-blankline
  hl("IblIndent",             { fg = p.sandstone })
  hl("IblScope",              { fg = p.dust })
  hl("IndentBlanklineChar",   { fg = p.sandstone })
  hl("IndentBlanklineContextChar", { fg = p.gold })

  -- which-key
  hl("WhichKey",              { fg = p.gold })
  hl("WhichKeyGroup",         { fg = p.lapis })
  hl("WhichKeyDesc",          { fg = p.papyrus })
  hl("WhichKeyBorder",        { fg = p.sandstone })
  hl("WhichKeyValue",         { fg = p.stone })

  -- trouble.nvim
  hl("TroubleText",           { fg = p.papyrus })
  hl("TroubleCount",          { fg = p.gold,      bg = p.obsidian })
  hl("TroubleNormal",         { fg = p.papyrus,   bg = p.tomb })

  -- lualine (semantic hint — actual lualine config in README)
  hl("KhamsinNormal",         { fg = p.black,     bg = p.gold,      bold = true })
  hl("KhamsinInsert",         { fg = p.black,     bg = p.malachite, bold = true })
  hl("KhamsinVisual",         { fg = p.black,     bg = p.kohl,      bold = true })
  hl("KhamsinReplace",        { fg = p.black,     bg = p.carnelian, bold = true })
  hl("KhamsinCommand",        { fg = p.black,     bg = p.lapis,     bold = true })
end

return M
