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
            -- SERVER ATTIVI (Pronti all'uso)
            -- ==========================================================
            "pyright",           -- Python
            "html",              -- HTML
            "cssls",             -- CSS, SCSS, LESS
            "emmet_ls",          -- Espansione tag HTML/CSS
            "ts_ls",             -- TypeScript / JavaScript
            "lua_ls",            -- Lua
            "r_language_server", -- R

            -- ==========================================================
            -- SERVER DISATTIVATI
            -- ==========================================================

            -- Web Frontend & Framework
            -- "eslint",          -- JavaScript/TypeScript (Linter ufficiale)
            -- "tailwindcss",     -- Tailwind CSS
            -- "volar",           -- Vue.js
            -- "svelte",          -- Svelte
            -- "astro",           -- Astro framework
            -- "htmx",            -- HTMX

            -- Sistemi, C/C++ & Basso Livello
            -- "clangd",          -- C, C++ (Il più potente per C/C++)
            -- "cmake",           -- CMake (Configurazione build)
            -- "rust_analyzer",   -- Rust (Lo standard assoluto)
            -- "zls",             -- Zig
            -- "nimls",           -- Nim

            -- Enterprise (Go, Java, .NET)
            "gopls",           -- Go (Golang)
            -- "jdtls",           -- Java (Richiede configurazione extra solitamente)
            -- "omnisharp",       -- C# / .NET
            -- "kotlin_language_server", -- Kotlin

            -- Scripting & Terminale
            -- "bashls",          -- Script Bash / Shell
            -- "powershell_es",   -- PowerShell
            -- "awk_ls",          -- AWK

            -- Backend (PHP, Ruby, etc.)
            -- "intelephense",    -- PHP (Il migliore gratuito per PHP)
            -- "ruby_lsp",        -- Ruby
            -- "solargraph",      -- Ruby (Alternativa storica)
            -- "elmls",           -- Elm

            -- Programmazione Funzionale
            -- "elixirls",        -- Elixir
            -- "erlangls",        -- Erlang
            -- "hls",             -- Haskell
            -- "clojure_lsp",     -- Clojure
            -- "ocamllsp",        -- OCaml
            -- "gleam",           -- Gleam

            -- Data Science & Accademia
            -- "julials",         -- Julia
            -- "texlab",          -- LaTeX (Documenti scientifici)
            -- "typst_lsp",       -- Typst (Il nuovo concorrente di LaTeX)
            -- "fortls",          -- Fortran

            -- Sviluppo Mobile
            -- "sourcekit",       -- Swift / Objective-C
            -- "dartls",          -- Dart / Flutter

            -- Database & ORM
            "sqlls",           -- SQL
            -- "prismals",        -- Prisma ORM

            -- DevOps, Cloud & Container
            "dockerls",        -- Dockerfile
            "docker_compose_language_service", -- Docker Compose
            -- "terraformls",     -- Terraform
            -- "helm_ls",         -- Helm (Kubernetes)

            -- Dati, File di Configurazione & Testi
            "jsonls",          -- JSON
            "yamlls",          -- YAML
            "taplo",           -- TOML
            "marksman",        -- Markdown
            -- "ltex",            -- Controllo grammaticale/ortografico 
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
