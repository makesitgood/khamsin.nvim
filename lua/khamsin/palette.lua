-- khamsin/palette.lua
-- Colors drawn from ancient Egyptian wall painting pigments:
-- Egyptian blue (lapis lazuli), gold leaf, malachite green,
-- red ochre, white gypsum, carbon black, and faience glaze.

local M = {}

M.none = "NONE"

-- Base surfaces
M.black      = "#000000"  -- pure black background
M.tomb       = "#0d0b08"  -- near-black warm tint (floating windows)
M.obsidian   = "#1a1510"  -- dark surface (statusline, popups)
M.shadow     = "#241e16"  -- slightly lighter (cursorline, selection)
M.sandstone  = "#4a3d2a"  -- line numbers, borders
M.dust       = "#6b5a42"  -- indent guides, muted UI
M.stone      = "#8a7660"  -- comments (readable but receding)

-- Text
M.papyrus    = "#cbbfaf"  -- default text — warm off-white of real papyrus
M.linen      = "#a0927e"  -- parameters, misc identifiers

-- Syntax accent colors — all sampled from Egyptian pigments
M.gold       = "#d4942a"  -- egyptian gold leaf — keywords
M.pale_gold  = "#c8a84b"  -- diluted gold — types, classes
M.lapis      = "#4a9eb5"  -- lapis lazuli blue — functions
M.malachite  = "#7fbf6f"  -- malachite green — strings
M.terracotta = "#c46a3a"  -- red ochre / terracotta — numbers, constants
M.faience    = "#5a9a80"  -- faience glaze teal — imports, modules
M.copper     = "#b87a52"  -- aged copper — operators
M.kohl       = "#7a6a90"  -- kohl eye paint purple — decorators, attributes
M.sunset     = "#e08050"  -- horus-eye orange — builtins
M.carnelian  = "#cc4444"  -- carnelian red — errors

-- Diagnostic
M.warn       = "#c8a84b"  -- pale gold
M.info       = "#4a9eb5"  -- lapis
M.hint       = "#5a9a80"  -- faience

return M
