return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
    end,
    opts = {
        defaults = {
            ["<leader>t"] = { name = "+Tabs" },
            ["<leader>b"] = { name = "+Buffers" },
            ["<leader>f"] = { name = "+Telescope" },
            ["<leader>h"] = { name = "+Gitsigns" },
        },
    },
    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.register(opts.defaults)
    end
}
