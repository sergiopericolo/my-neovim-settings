# my-neovim-settings

A minimal, single-palette Neovim configuration written in Lua.

Every color in the interface, the syntax highlighting, the diagnostics, and the
plugins comes from one fixed palette. No other color is used anywhere.

## Requirements

- Neovim 0.11 or newer
- Git
- A terminal with truecolor support

## Install

```sh
git clone https://github.com/sergiopericolo/my-neovim-settings.git ~/.config/nvim
```

Open Neovim once. Lazy will install itself and then all the plugins.

## Palette

| Name     | Hex       |
| -------- | --------- |
| white    | `#FFFFFF` |
| color1   | `#CED3DE` |
| color2   | `#969FB0` |
| color3   | `#6C7689` |
| color4   | `#4D576A` |
| color5   | `#2A2D35` |
| color_bg | `#1F2125` |

The palette is defined in `lua/core/palette.lua` and is re-applied on
`ColorScheme` and `FileType` events so that plugin and filetype highlights
cannot escape it.

## Structure

```
~/.config/nvim
├── init.lua
├── lazy-lock.json
└── lua
    ├── core
    │   ├── keymap.lua
    │   ├── lazy.lua
    │   ├── options.lua
    │   └── palette.lua
    └── plugins
        ├── CMP.lua
        ├── LSP.lua
        ├── dadbod.lua
        ├── devicons.lua
        ├── lualine.lua
        ├── nvim_tree.lua
        ├── smear_cursor.lua
        └── telescope.lua
```

## Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim) - plugin manager
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) - completion
- [LuaSnip](https://github.com/L3MON4D3/LuaSnip) - snippets
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP setup
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP installer
- [mason-lspconfig.nvim](https://github.com/williamboman/mason-lspconfig.nvim) - LSP bridge
- [emmet-ls](https://github.com/aca/emmet-ls) - Emmet support
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim) - statusline
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua) - file explorer
- [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) - icons
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - fuzzy finder
- [smear-cursor.nvim](https://github.com/sphamba/smear-cursor.nvim) - cursor animation
- [vim-dadbod](https://github.com/tpope/vim-dadbod) - database client
- [vim-dadbod-ui](https://github.com/kristijanhusak/vim-dadbod-ui) - database UI

## Keymaps

| Keys          | Action                        |
| ------------- | ----------------------------- |
| `<leader>e`   | Toggle file explorer          |
| `<leader>ff`  | Find files                    |
| `<leader>fg`  | Live grep                     |
| `<leader>fb`  | Open buffers                  |
| `gd`          | Go to definition              |
| `K`           | Show hover information        |
| `gl`          | Open diagnostics float        |
| `<C-Space>`   | Trigger completion            |
| `<Tab>`       | Next completion item          |
| `<S-Tab>`     | Previous completion item      |
| `<CR>`        | Confirm completion            |

The leader key is `<Space>`.

## Language servers

Enabled servers are listed in `lua/plugins/LSP.lua`. Disabled servers are
kept as comments in the same file and can be enabled by removing the `--`.
