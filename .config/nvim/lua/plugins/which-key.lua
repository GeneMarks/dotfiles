return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        icons = {
            breadcrumb = "»",
            separator = "›",
            group = "+"
        }
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)

        wk.register({ ["<leader>b"] = { name = "+Buffers" } }, { mode = "n" })
        wk.register({ ["<leader>h"] = { name = "+Gitsigns" } }, { mode = { "n", "v" } })
        wk.register({ ["<leader>t"] = { name = "+Tabs" } }, { mode = "n" })
        wk.register({ ["<leader>f"] = { name = "+Telescope" } }, { mode = "n" })
    end
}
