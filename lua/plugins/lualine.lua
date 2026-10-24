local palette = require("core.palette")

return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                component_separators = '',
                section_separators = '',
                icons_enabled = true,
                theme = {
                    normal = {
                        a = { fg = palette.color_bg, bg = palette.white, gui = "bold" },
                        b = { fg = palette.color2, bg = palette.color5 },
                        c = { fg = palette.color1, bg = palette.color5 },
                    },
                    insert = {
                        a = { fg = palette.color_bg, bg = palette.color2, gui = "bold" },
                        b = { fg = palette.color2, bg = palette.color5 },
                        c = { fg = palette.color1, bg = palette.color5 },
                    },
                    visual = {
                        a = { fg = palette.color_bg, bg = palette.color3, gui = "bold" },
                        b = { fg = palette.color2, bg = palette.color5 },
                        c = { fg = palette.color1, bg = palette.color5 },
                    },
                    replace = {
                        a = { fg = palette.color_bg, bg = palette.color1, gui = "bold" },
                        b = { fg = palette.color2, bg = palette.color5 },
                        c = { fg = palette.color1, bg = palette.color5 },
                    },
                    command = {
                        a = { fg = palette.color_bg, bg = palette.color3, gui = "bold" },
                        b = { fg = palette.color2, bg = palette.color5 },
                        c = { fg = palette.color1, bg = palette.color5 },
                    },
                    inactive = {
                        a = { fg = palette.color4, bg = palette.color5 },
                        b = { fg = palette.color4, bg = palette.color5 },
                        c = { fg = palette.color4, bg = palette.color5 },
                    },
                },
            },
            sections = {
                lualine_a = { '' },
                lualine_b = { 'branch' },
                lualine_c = { 'filename' },
                lualine_x = {},
                lualine_y = {},
                lualine_z = { 'location' },
            },
        })
    end
}
