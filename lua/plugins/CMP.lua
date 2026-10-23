return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "L3MON4D3/LuaSnip",
    },
    config = function()
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

        vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Read diagnostic:" })
    end
}

