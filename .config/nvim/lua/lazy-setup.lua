require("lazy").setup({
    spec = {
        { import = "themes" },
        { import = "plugins" },
        { import = "plugins.lsp" },
        { import = "plugins.language-support.cc" },
    }
})
