# 𓂀 khamsin.nvim

Claude did this, not taking credit I just told it what to do

> *A khamsin is the hot desert wind that sweeps off the Sahara into Egypt —
> warm, ancient, and relentless.*

A dark Neovim colorscheme drawn from the pigments of ancient Egyptian wall
painting. The palette is sourced directly from real temple frescos: lapis
lazuli blue, gold leaf, malachite green, red ochre, faience glaze, and
carbon black.

![khamsin preview](https://raw.githubusercontent.com/makesitgood/khamsin.nvim/main/preview.png)

---

## Palette

Colors map directly to Egyptian pigments:

| Name | Hex | Pigment | Used for |
|---|---|---|---|
| `gold` | `#d4942a` | Egyptian gold leaf | keywords |
| `pale_gold` | `#c8a84b` | Diluted gold | types, classes |
| `lapis` | `#4a9eb5` | Lapis lazuli | functions |
| `malachite` | `#7fbf6f` | Malachite green | strings |
| `terracotta` | `#c46a3a` | Red ochre | numbers, constants |
| `faience` | `#5a9a80` | Faience glaze | imports, modules |
| `copper` | `#b87a52` | Aged copper | operators |
| `kohl` | `#7a6a90` | Kohl eye paint | decorators, attributes |
| `sunset` | `#e08050` | Horus-eye orange | builtins |
| `papyrus` | `#cbbfaf` | Papyrus fibre | default text |
| `stone` | `#8a7660` | Worn sandstone | comments |

---

## Features

- Pure black (`#000000`) background
- Full **Treesitter** support (`@variable`, `@function`, `@keyword.*`, `@markup.*`, etc.)
- Full **LSP semantic token** support (`@lsp.type.*`, `@lsp.mod.*`, language-specific overrides)
- Diagnostic highlights with undercurl
- Plugin support: Telescope, nvim-cmp, nvim-tree, gitsigns, indent-blankline, which-key, trouble.nvim
- Lualine theme included (see `:h khamsin-lualine`)

---

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled
- `nvim-treesitter` recommended
- Any LSP server with semantic token support (clangd, rust-analyzer, pyright, etc.)

---

## Installation

**lazy.nvim** (recommended):

```lua
{
  "makesitgood/khamsin.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("khamsin")
  end,
}
```

**packer.nvim**:

```lua
use {
  "makesitgood/khamsin.nvim",
  config = function()
    vim.cmd.colorscheme("khamsin")
  end,
}
```

**vim-plug**:

```vim
Plug 'makesitgood/khamsin.nvim'
```

---

## Usage

```lua
vim.cmd.colorscheme("khamsin")
```

Or directly:

```lua
require("khamsin").load()
```

---

## Lualine

```lua
local p = require("khamsin.palette")

require("lualine").setup({
  options = {
    theme = {
      normal  = { a = { fg = p.black, bg = p.gold,      gui = "bold" },
                  b = { fg = p.papyrus, bg = p.obsidian },
                  c = { fg = p.stone,   bg = p.tomb } },
      insert  = { a = { fg = p.black, bg = p.malachite, gui = "bold" } },
      visual  = { a = { fg = p.black, bg = p.kohl,      gui = "bold" } },
      replace = { a = { fg = p.black, bg = p.carnelian, gui = "bold" } },
      command = { a = { fg = p.black, bg = p.lapis,     gui = "bold" } },
      inactive = { a = { fg = p.dust, bg = p.tomb },
                   b = { fg = p.dust, bg = p.tomb },
                   c = { fg = p.dust, bg = p.tomb } },
    }
  }
})
```

---

## Accessing the palette

```lua
local p = require("khamsin.palette")
-- use p.gold, p.lapis, etc. in your own config
vim.api.nvim_set_hl(0, "MyCustomGroup", { fg = p.faience, italic = true })
```

---

## Contributing

PRs welcome for:
- Additional plugin support
- Language-specific LSP overrides
- Terminal color definitions (`g:terminal_color_*`)

---

## License

MIT
