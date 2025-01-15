return {
    {
    "williamboman/mason.nvim",
    config = function()
        require("mason").setup({

        })
    end
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed =  {
                    "bashls",
                    "harper_ls",
                    "arduino_language_server",
                    "clangd",
                    "cssls",
                    "html",
                    -- "htmx",
                    "csharp_ls",
                    "biome",
                    "basedpyright",
                    "rust_analyzer",
                    "asm_lsp",
                    -- "jinja_lsp",
                    "ltex",
                    "intelephense",
                    "perlnavigator",
                    "powershell_es",
                    "rubocop",
                    "sqlls",
                    "lemminx",
                    "zls"

                }
            })
        end

    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.bashls.setup({})
            lspconfig.asm_lsp.setup({})
            lspconfig.arduino_language_server.setup({})
            lspconfig.cssls.setup({})
            lspconfig.clangd.setup({})
            lspconfig.harper_ls.setup({})
            lspconfig.basedpyright.setup({})
            lspconfig.rust_analyzer.setup({})
            lspconfig.html.setup({})
            -- lspconfig.htmx.setup({})
            lspconfig.csharp_ls.setup({})
            lspconfig.biome.setup({})
            lspconfig.ltex.setup({})
            lspconfig.sqlls.setup({})
            lspconfig.zls.setup({})
            lspconfig.intelephense.setup({})
            lspconfig.rubocop.setup({})
            lspconfig.lemminx.setup({})
            lspconfig.powershell_es.setup({})
            lspconfig.perlnavigator.setup({})
            lspconfig.jinja_lsp.setup({})

            vim.keymap.set('n','K', vim.lsp.buf.hover, {})
            vim.keymap.set('n','<leader>gd', vim.lsp.buf.definition, {})
            vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}
