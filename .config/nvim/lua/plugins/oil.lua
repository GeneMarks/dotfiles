return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup({
            delete_to_trash = true,
        })

        local wk = require("which-key")
        vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>")
        wk.register({ ["<leader>o"] = "Oil" })
    end
}
