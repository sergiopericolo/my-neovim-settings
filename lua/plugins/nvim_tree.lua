return {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("nvim-tree").setup({
            view = { 
                width = 30, 
                side = "left" 
            },
            renderer = {
                highlight_opened_files = "all",-- Ricorda di mettere "all" se vuoi evidenziare anche l'icona!
                icons = { 
                    show = { 
                        file = true, 
                        folder = true 
                    },
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
    end
}
