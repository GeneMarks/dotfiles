return {
    "tpope/vim-fugitive",
    config = function()
        local wk = require("which-key")
        vim.keymap.set("n", "<leader>g", "<CMD>Git<CR>")
        wk.register({ ["<leader>g"] = "Fugitive" })
    end
}
