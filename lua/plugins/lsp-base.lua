return {
    {
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
            -- your configuration comes here
            -- or leave it empty to use the default settings
            -- refer to the configuration section below
        },
    },
    {
        "williamboman/mason.nvim",
        lazy = false,
        config = function()
            require("mason").setup({
            })
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "pyright" , "ruff_lsp", "clangd" }
            })
        end
    },
    {
        "neovim/nvim-lspconfig",
        config = function()
            local lspconfig = require("lspconfig")
            lspconfig.lua_ls.setup({})
            lspconfig.pyright.setup({
                on_attach = on_attach,
                capabilities = capabilities,
                filetypes = {"python"}
            })
            lspconfig.ruff_lsp.setup({
                on_attach = on_attach,

            })
            lspconfig.clangd.setup({})
        end
    },
    {
        'WhoIsSethDaniel/mason-tool-installer.nvim',
        requires = {
            'williamboman/mason.nvim',
        },
        config = function()
            require('mason-tool-installer').setup({
                ensure_installed = {
                    'black',
                    'stylua',
                    'debugpy',
                },
            })
        end,
    },
    {
        "j-hui/fidget.nvim",
        opts = {
            -- options
        },
    }
}
