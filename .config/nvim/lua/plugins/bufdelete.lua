return {
    "famiu/bufdelete.nvim",
    config = function()
        local wk = require("which-key")
        vim.keymap.set("n", "<leader>bd", "<CMD>Bdelete<CR>")
        wk.register({ ["<leader>bd"] = "Delete current buffer" })
    end
}
