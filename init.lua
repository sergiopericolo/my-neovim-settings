--################################### SETTINGS ########################################--

-- general settings
require("core.options")

-- keymaps (se non è già importato)
pcall(require, "core.keymap")

-- plugin
require("core.lazy")

-- theme
require("core.palette")
