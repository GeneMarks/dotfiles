return {
    dir = "~/.dotfiles/.config/nvim/lua/plugins-local/chameleon",
    name = "chameleon",
    config = function()
        require("plugins-local.chameleon.init").setup()
    end
}
