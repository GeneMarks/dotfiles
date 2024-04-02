return {
    "catppuccin/nvim",
    name = "theme-catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
        require("catppuccin").setup({
            highlight_overrides = {
                latte = function(latte)
                    return {
                        MatchParen = { bg = "#e2e4e9" }
                    }
                end
            }
        })
    end
}
