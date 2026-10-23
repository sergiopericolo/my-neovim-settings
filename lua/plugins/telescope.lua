return {
    "nvim-telescope/telescope.nvim",
    -- Plenary è una libreria necessaria per far funzionare Telescope
    dependencies = { "nvim-lua/plenary.nvim" },
    
    -- Usiamo la funzione 'keys' di Lazy per impostare le scorciatoie
    keys = {
        -- <leader>ff (Find Files): Cerca i file per nome
        { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Cerca File" },
        
        -- <leader>fg (Find Grep): Cerca una parola o una frase DENTRO i file
        { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Cerca Testo" },
        
        -- <leader>fb (Find Buffers): Cerca tra i file che hai attualmente aperti
        { "<leader>fb", "<cmd>Telescope buffers<cr>", desc = "Cerca Buffer Aperti" },
    },
}
