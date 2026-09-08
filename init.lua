--################################### SETTINGS ########################################--


-- plugin
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    "neovim/nvim-lspconfig",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "nvim-tree/nvim-tree.lua",
    "nvim-tree/nvim-web-devicons",
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
    "aca/emmet-ls",
    {
    	"sphamba/smear-cursor.nvim",
  	opts = {
    	    stiffness = 0.8,
            railing_stiffness = 0.5,
    	    distance_stop_animating = 0.1,
  		}
    }
})





-- general settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.mouse = "a"
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.clipboard = "unnamedplus"
vim.g.mapleader = " "
vim.g.maplocalleader = ","
vim.opt.termguicolors = true





-- theme
require("core.palette")



-- LSP
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "html", "cssls", "emmet_ls", "ts_ls", "r_language_server" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "pyright", "html", "cssls", "emmet_ls", "ts_ls", "r_language_server" }

for _, lsp in ipairs(servers) do
    vim.lsp.config(lsp, {
        capabilities = capabilities,
    })
    vim.lsp.enable(lsp)
end

--ORIGINALE
--vim.lsp.enable("pyright")
--vim.lsp.enable("html")
--vim.lsp.enable("cssls")
--vim.lsp.enable("emmet_ls")
--vim.lsp.enable("ts_ls")
--vim.lsp.enable("r_language_server")






-- CMP
local cmp = require("cmp")

cmp.setup({
    completion = { autocomplete = false },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
    }),
    sources = cmp.config.sources({
        { name = "nvim_lsp" },
    }),
})

vim.diagnostic.config({
    virtual_text = false,
    underline = false,
    signs = { severity = { min = vim.diagnostic.severity.ERROR } },
    update_in_insert = false,
})

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(args)
        local bufnr = args.buf
        local opts = { buffer = bufnr }
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
        vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    end,
})

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Leggi diagnostica" })





-- nvim-tree
require("nvim-tree").setup({
    view = { width = 30, side = "left" },
    renderer = { icons = { show = { file = true, folder = true } } },
})

require("nvim-tree").setup({
  renderer = {
    icons = {
      web_devicons = {
        file = {
          enable = true,
          color = false,
        },
        folder = {
          enable = true,
          color = false,
        },
      },
    },
  },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
