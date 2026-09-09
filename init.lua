--################################### SETTINGS ########################################--

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
vim.opt.scrolloff = 8
vim.opt.undofile = true

-- plugin
require("core.plugins")







-- theme
require("core.palette")

-- LSP
require("core.LSP")

-- CMP
require("core.CMP")

-- nvim-tree
require("core.nvim_tree")
