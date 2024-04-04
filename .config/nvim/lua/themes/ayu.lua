return {
    "Shatur/neovim-ayu",
    name = "theme-ayu",
    lazy = false,
    priority = 1000,
    config = function()
        require("ayu").setup({})
    end
}
