return {
    "VonHeikemen/lsp-zero.nvim", branch = "v3.x",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
    },

    config = function ()
        -- Lsp-zero config
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({buffer = bufnr})
        end)

        -- Mason config
        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "tsserver",
                "eslint",
                "lua_ls"
            },
            handlers = {
                lsp_zero.default_setup,
            },
        })

        -- Cmp config
        local cmp = require("cmp")

        cmp.setup({
            mapping = {
                ["<ENTER>"] = cmp.mapping.confirm({select = false}),
            }
        })
    end
}
