return {
    "famiu/bufdelete.nvim",
    config = function()
        local wk = require("which-key")
        wk.register({ ["<leader>bd"] = "Delete current buffer" })
        vim.keymap.set("n", "<leader>bd", "<CMD>Bdelete<CR>")
    end
}
