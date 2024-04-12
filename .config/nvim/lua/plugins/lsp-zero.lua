return {
    "VonHeikemen/lsp-zero.nvim", branch = "v3.x",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
    },

    config = function ()
        -- Lsp-zero config
        local lsp_zero = require("lsp-zero")
        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({
                buffer = bufnr,
                preserve_mappings = false,
            })
        end)

        -- Mason config
        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "clangd",
                "jdtls",
                "tsserver",
                "eslint",
                "lua_ls"
            },
            handlers = {
                lsp_zero.default_setup,
                tsserver = function()
                    require("lspconfig").tsserver.setup({
                        settings = {
                            completions = {
                                completeFunctionCalls = true,
                            },
                        }
                    })
                end,
            },
        })

        -- Cmp config
        local cmp = require("cmp")
        local cmp_action = require("lsp-zero").cmp_action()

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
                ["<C-SPACE>"] = cmp.mapping.complete(),
                ["<C-l>"] = cmp_action.luasnip_jump_forward(),
                ["<C-h>"] = cmp_action.luasnip_jump_backward(),
            }),
            -- preselect = "item",
            -- completion = {
            --     completeopt = "menu, menuone, noinsert"
            -- },
            -- window = {
            --     completion = cmp.config.window.bordered(),
            --     documentation = cmp.config.window.bordered(),
            -- },
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" },
            },
            formatting = {
                fields = { "abbr", "kind", "menu" },
                format = function(entry, item)
                    local source = entry.source.name
                    local formatted = {
                        nvim_lsp = "LSP",
                        buffer = "Buffer",
                        path = "Path",
                        cmdline = "CMD",
                    }
                    item.menu = " [" .. formatted[source] .. "]"

                    return item
                end,
            },
            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            experimental = {
                ghost_text = true,
            },
        })

        cmp.setup.cmdline("/", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = {
                { name = "buffer" },
            },
        })

        cmp.setup.cmdline(":", {
            mapping = cmp.mapping.preset.cmdline(),
            sources = cmp.config.sources({
                { name = "path" }
            },
            {
                {
                    name = "cmdline",
                    option = {
                        ignore_cmds = { "Man", "!" },
                    },
                }
            })
        })
    end
}
