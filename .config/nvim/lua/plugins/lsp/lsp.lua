return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
    },
    config = function ()
        local servers = {
            "clangd",
            "jdtls",
            "tsserver",
            "eslint",
            "lua_ls"
        }

        -- Keymaps
        vim.api.nvim_create_autocmd("LspAttach", {
            desc = "LSP actions",
            callback = function(event)
                vim.keymap.set("n", "K", "<CMD>lua vim.lsp.buf.hover()<CR>", { desc = "Show information", buffer = event.buf })
                vim.keymap.set("n", "gd", "<CMD>lua vim.lsp.buf.definition()<CR>", { desc = "Go to definition", buffer = event.buf })
                vim.keymap.set("n", "gD", "<CMD>lua vim.lsp.buf.declaration()<CR>", { desc = "Go to declaration", buffer = event.buf })
                vim.keymap.set("n", "gi", "<CMD>lua vim.lsp.buf.implementation()<CR>", { desc = "Go to implementation", buffer = event.buf })
                vim.keymap.set("n", "go", "<CMD>lua vim.lsp.buf.type_definition()<CR>", { desc = "Go to type definition", buffer = event.buf })
                vim.keymap.set("n", "gr", "<CMD>lua vim.lsp.buf.references()<CR>", { desc = "Get references", buffer = event.buf })
                vim.keymap.set("n", "gs", "<CMD>lua vim.lsp.buf.signature_help()<CR>", { desc = "Get signature help", buffer = event.buf })
                vim.keymap.set("n", "<F2>", "<CMD>lua vim.lsp.buf.rename()<CR>", { desc = "Rename", buffer = event.buf })
                vim.keymap.set({"n", "x"}, "<F3>", "<CMD>lua vim.lsp.buf.format({async = true})<CR>", { desc = "Format", buffer = event.buf })
                vim.keymap.set("n", "<F4>", "<CMD>lua vim.lsp.buf.code_action()<CR>", { desc = "Code actions", buffer = event.buf })
            end
        })

        local lspconfig = require("lspconfig")
        local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

        -- Mason config
        require('mason').setup({})

        local function deep_merge(t1, t2)
            for k, v in pairs(t2) do
                if type(v) == "table" and type(t1[k]) == "table" then
                    deep_merge(t1[k], v) -- Recursively merge tables
                else
                    t1[k] = v -- Overwrite t1 with t2 value
                end
            end
        end

        local handlers = {}
        for _, server in ipairs(servers) do
            local moduleName = "plugins.lsp.language-configs." .. server
            local success, module = pcall(require, moduleName)
            local config = { capabilities = lsp_capabilities or {} }

            if success then
                deep_merge(config, module)
            end

            handlers[server] = function()
                lspconfig[server].setup(config)
            end
        end

        require('mason-lspconfig').setup({
            ensure_installed = servers,
            handlers = handlers
        })

        -- Cmp config
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        local lsjump = function(direction)
            return cmp.mapping(function(fallback)
                if luasnip.jumpable(direction) then
                    luasnip.jump(direction)
                else
                    fallback()
                end
            end, {'i', 's'})
        end

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-u>"] = cmp.mapping.scroll_docs(-4),
                ["<C-d>"] = cmp.mapping.scroll_docs(4),
                ["<C-SPACE>"] = cmp.mapping.complete(),
                ["<C-l>"] = lsjump(1),
                ["<C-h>"] = lsjump(-1),
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
                    luasnip.lsp_expand(args.body)
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
