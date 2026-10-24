local palette = require("core.palette")

return {
    "nvim-tree/nvim-web-devicons",
    config = function()
        local devicons = require("nvim-web-devicons")

        devicons.setup({
            color_icons = false,
            default = true,
        })

        devicons.set_default_icon(devicons.get_default_icon().icon, palette.color1)
    end
}
