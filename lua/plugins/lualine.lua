return {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("lualine").setup({
            options = {
                -- Rimuove le "frecce" per un look piatto e minimale
                component_separators = '',
                section_separators = '',
                -- Metti su false se non vuoi vedere nemmeno l'icona del file
                icons_enabled = true, 
            },
            sections = {
                lualine_a = { '' },      -- Mostra solo NORMAL/INSERT
                lualine_b = { 'branch' },              -- Nasconde il branch di Git
                lualine_c = { 'filename' },  -- Mostra il nome del file
                lualine_x = {},              -- Nasconde codifica e sistema operativo
                lualine_y = {},              -- Nasconde la percentuale (Top/Bot)
                lualine_z = { 'location' }   -- Mostra solo riga:colonna
            },
        })
    end
}
