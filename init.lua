-- #####################################################################################--
-- ##  NEOVIM SETTINGS - monochromo theme  #############################################--
-- #####################################################################################--




-- plugin --------------------------------------------------------------------------------
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
})
------------------------------------------------------------------------------- \plugin --








-- general_settings ----------------------------------------------------------------------
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
--------------------------------------------------------------------- \general_settings --








-- theme ---------------------------------------------------------------------------------
local white = "#F2F4F6"
local grey1 = "#B5BCCE"
local grey2 = "#747F95"
local grey3 = "#4C5466"

vim.api.nvim_set_hl(0, "Normal",                    { fg = "#D8DEE9", bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat",               { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr",                    { fg = "#4C566A", bg = "none" })
vim.api.nvim_set_hl(0, "SignColumn",                { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer",               { fg = "#3B4252", bg = "none" })

vim.api.nvim_set_hl(0, "Identifier",                { fg = grey1 })
vim.api.nvim_set_hl(0, "Boolean",                   { fg = white })
vim.api.nvim_set_hl(0, "Number",                    { fg = white })
vim.api.nvim_set_hl(0, "PreProc",                   { fg = grey1 })
vim.api.nvim_set_hl(0, "Special",                   { fg = grey1 })
vim.api.nvim_set_hl(0, "Delimiter",                 { fg = grey2, bold = true })

vim.api.nvim_set_hl(0, "Constant",                  { fg = white })
vim.api.nvim_set_hl(0, "@constant",                 { fg = white })
vim.api.nvim_set_hl(0, "String",                    { fg = grey2 })
vim.api.nvim_set_hl(0, "@string",                   { fg = grey2 })
vim.api.nvim_set_hl(0, "Comment",                   { fg = grey3, bold = true })
vim.api.nvim_set_hl(0, "@comment",                  { fg = grey3, bold = true })
vim.api.nvim_set_hl(0, "Operator",                  { fg = grey1 })
vim.api.nvim_set_hl(0, "@operator",                 { fg = grey1 })
vim.api.nvim_set_hl(0, "Keyword",                   { fg = white, bold = true })
vim.api.nvim_set_hl(0, "@keyword",                  { fg = white, bold = true })
vim.api.nvim_set_hl(0, "Function",                  { fg = white })
vim.api.nvim_set_hl(0, "@function",                 { fg = white })
vim.api.nvim_set_hl(0, "Type",                      { fg = white })
vim.api.nvim_set_hl(0, "@type",                     { fg = white })
vim.api.nvim_set_hl(0, "Method",                    { fg = grey1 })
vim.api.nvim_set_hl(0, "@method",                   { fg = grey1 })

vim.api.nvim_set_hl(0, "@variable",                 { fg = grey1 })
vim.api.nvim_set_hl(0, "@variable.builtin",         { fg = grey1 })
vim.api.nvim_set_hl(0, "@parameter",                { fg = grey1 })
vim.api.nvim_set_hl(0, "@property",                 { fg = grey1 })
vim.api.nvim_set_hl(0, "@field",                    { fg = grey1 })
vim.api.nvim_set_hl(0, "@punctuation",              { fg = grey2 })
vim.api.nvim_set_hl(0, "@punctuation.bracket",      { fg = grey2, bold = true })
vim.api.nvim_set_hl(0, "@punctuation.delimiter",    { fg = grey2, bold = true })
vim.api.nvim_set_hl(0, "@constructor",              { fg = grey2, bold = true })
vim.api.nvim_set_hl(0, "@label",                    { fg = grey1 })
vim.api.nvim_set_hl(0, "@namespace",                { fg = grey1 })
vim.api.nvim_set_hl(0, "@module",                   { fg = grey1 })
vim.api.nvim_set_hl(0, "@include",                  { fg = grey1 })
vim.api.nvim_set_hl(0, "@function.builtin",         { fg = white })
-------------------------------------------------------------------------------- \theme --








-- LSP -----------------------------------------------------------------------------------
require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = { "pyright", "clangd", "html", "cssls", 
                         "emmet_ls", "ts_ls", "r_language_server" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local servers = { "pyright", "clangd", "html", "cssls", 
                  "emmet_ls", "ts_ls", "r_language_server" }

for _, lsp in ipairs(servers) do
    vim.lsp.config(lsp, {
        capabilities = capabilities,
    })
    vim.lsp.enable(lsp)
end
---------------------------------------------------------------------------------- \LSP --








-- CMP -----------------------------------------------------------------------------------
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

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Read Diagnostic" })
---------------------------------------------------------------------------------- \CMP --








-- tree ----------------------------------------------------------------------------------
require("nvim-tree").setup({
    view = { width = 30, side = "left" },
    renderer = { icons = { show = { file = true, folder = true } } },
})

vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { silent = true })
--------------------------------------------------------------------------------- \tree --
