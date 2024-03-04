return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        ensure_installed = { "lua", "vim", "vimdoc", "query", "cpp", "javascript", "typescript", "html", "css" },
        sync_install = false,
        auto_install = true,
        highlight = { enable = true },
        -- indent = { enable = true },  
    }
}
