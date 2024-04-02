return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-cmdline",
        "hrsh7th/cmp-buffer",
    },
    config = function()
        local cmp = require("cmp")
        local cmp_format = require("lsp-zero").cmp_format({ details = true })

        cmp.setup({
            mapping = cmp.mapping.preset.insert({
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
            }),
            -- preselect = "item",
            -- completion = {
            --     completeopt = "menu, menuone, noinsert"
            -- },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            sources = {
                { name = "nvim_lsp" },
                { name = "buffer" },
            },
            formatting = cmp_format,
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
