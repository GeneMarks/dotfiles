return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require("nvim-treesitter.install").compilers = { "clang" }
        require("nvim-treesitter").setup({
            ensure_installed = { "lua", "vim", "vimdoc", "query", "cpp", "java", "javascript", "typescript", "html", "css" },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            -- indent = { enable = true },
        })
    end
}
