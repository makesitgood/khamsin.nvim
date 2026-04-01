-- khamsin/init.lua
-- Entry point for the khamsin colorscheme module.
-- Called by colors/khamsin.lua when :colorscheme khamsin is run.

local M = {}

function M.load()
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.o.background = "dark"
  vim.g.colors_name = "khamsin"

  local p = require("khamsin.palette")
  require("khamsin.groups").setup(p)

  -- Fire the ColorScheme event so plugins that hook it can react
  vim.api.nvim_exec_autocmds("ColorScheme", {
    pattern = "khamsin",
    modeline = false,
  })
end

return M
