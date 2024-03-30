return {
    "zaldih/themery.nvim",
    config = function()
        require("themery").setup({
            themeConfigFile = "~/.dotfiles/.config/nvim/lua/theme.lua",
            themes = {
                {
                    name = "Oxocarbon dark",
                    colorscheme = "oxocarbon",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
                {
                    name = "Catppuccin latte",
                    colorscheme = "catppuccin-latte",
                    before = [[
                        vim.opt.background = "light"
                    ]],
                },
                {
                    name = "Github dark high contrast",
                    colorscheme = "github_dark_high_contrast",
                    before = [[
                        vim.opt.background = "dark"
                    ]],
                },
            }
        })

        local wk = require("which-key")

        vim.keymap.set("n", "<leader>c", "<CMD>Themery<CR>")
        wk.register({ ["<leader>c"] = "Change colorscheme" })
    end
}
