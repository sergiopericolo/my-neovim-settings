return {
    {
        "nvim-treesitter/nvim-treesitter",
        opts = function(_, opts)
            if type(opts.ensure_installed) == "table" then
                vim.list_extend(opts.ensure_installed, { "markdown", "markdown_inline", "latex" })
            end
        end,
    },
    {
        'MeanderingProgrammer/render-markdown.nvim',
        ft = { "markdown" }, 
        dependencies = { 
            'nvim-treesitter/nvim-treesitter', 
            'nvim-tree/nvim-web-devicons'
        },
        init = function()
            vim.opt.conceallevel = 2
        end,
        opts = {
            max_file_size = 1.5,
            heading = {
                icons = { '1. ', '2. ', '3. ', '4. ', '5. ', '6. ' },
                left_margin = 0,
                left_pad = 0,
            },

            code = {
                enabled = true,
                sign = false,  
                width = 'block',
                left_pad = 2,   
                right_pad = 2, 
            },

            latex = {
                enabled = true,
                highlight = 'RenderMarkdownMath',
            },
        },
    }
}
