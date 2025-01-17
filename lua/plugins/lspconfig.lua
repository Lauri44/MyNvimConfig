return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "lua_ls",
                    "eslint",
                    "bashls",
                    -- "harper_ls",
                    "arduino_language_server",
                    "clangd",
                    "cssls",
                    "html",
                    "htmx",
                    "csharp_ls",
                    "biome",
                    "basedpyright",
                    "rust_analyzer",
                    "asm_lsp",
                    "jinja_lsp",
                    "ltex",
                    "intelephense",
                    "perlnavigator",
                    "powershell_es",
                    "rubocop",
                    "sqlls",
                    "lemminx",
                    "zls",
                },
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")

            local capabilities = require('cmp_nvim_lsp').default_capabilities()

            local opts = { capabilities = capabilities }

            lspconfig.lua_ls.setup(opts)
            lspconfig.bashls.setup(opts)
            lspconfig.asm_lsp.setup(opts)
            lspconfig.arduino_language_server.setup(opts)
            lspconfig.cssls.setup(opts)
            lspconfig.clangd.setup(opts)
            -- lspconfig.harper_ls.setup({})
            lspconfig.basedpyright.setup(opts)
            lspconfig.rust_analyzer.setup(opts)
            lspconfig.html.setup(opts)
            -- lspconfig.htmx.setup({})
            lspconfig.csharp_ls.setup(opts)
            lspconfig.biome.setup(opts)
            lspconfig.ltex.setup(opts)
            lspconfig.eslint.setup(opts)
            lspconfig.sqlls.setup(opts)
            lspconfig.zls.setup(opts)
            lspconfig.rubocop.setup(opts)
            lspconfig.intelephense.setup(opts)
            lspconfig.lemminx.setup(opts)
            lspconfig.powershell_es.setup(opts)
            lspconfig.perlnavigator.setup(opts)
            lspconfig.jinja_lsp.setup(opts)
            vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
                vim.lsp.diagnostic.on_publish_diagnostics, {
                    virtual_text = true,
                    underline = true,
                    signs = true,
                }
            )

        end

    }}
