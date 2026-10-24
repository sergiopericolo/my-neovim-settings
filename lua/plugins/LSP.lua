return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "aca/emmet-ls",
    },
    config = function()
        local servers = {
            -- ==========================================================
            -- SERVER ATTIVI
            -- ==========================================================
            "pyright",
            "html",
            "cssls",
            "emmet_ls",
            "ts_ls",
            "lua_ls",
            "r_language_server",
            "gopls",
            "sqlls",
            "dockerls",
            "docker_compose_language_service",
            "jsonls",
            "yamlls",
            "taplo",
            "marksman",

            -- ==========================================================
            -- SERVER DISATTIVATI
            -- ==========================================================
            -- "eslint",
            -- "tailwindcss",
            -- "volar",
            -- "svelte",
            -- "astro",
            -- "htmx",
            -- "clangd",
            -- "cmake",
            -- "rust_analyzer",
            -- "zls",
            -- "nimls",
            -- "jdtls",
            -- "omnisharp",
            -- "kotlin_language_server",
            -- "bashls",
            -- "powershell_es",
            -- "awk_ls",
            -- "intelephense",
            -- "ruby_lsp",
            -- "solargraph",
            -- "elmls",
            -- "elixirls",
            -- "erlangls",
            -- "hls",
            -- "clojure_lsp",
            -- "ocamllsp",
            -- "gleam",
            -- "julials",
            -- "texlab",
            -- "typst_lsp",
            -- "fortls",
            -- "sourcekit",
            -- "dartls",
            -- "prismals",
            -- "terraformls",
            -- "helm_ls",
            -- "ltex",
        }

        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = servers,
        })

        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        for _, lsp in ipairs(servers) do
            local opts = {
                capabilities = capabilities,
            }

            if lsp == "lua_ls" then
                opts.settings = {
                    Lua = {
                        diagnostics = { globals = { "vim" } }
                    }
                }
            end

            vim.lsp.config(lsp, opts)
            vim.lsp.enable(lsp)
        end
    end
}
