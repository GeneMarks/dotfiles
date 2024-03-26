return {
    "stevearc/oil.nvim",
    config = function()
        local wk = require("which-key")

        require("oil").setup({
            delete_to_trash = true,
        })

        vim.keymap.set("n", "<leader>o", "<CMD>Oil<CR>")
        wk.register({ ["<leader>o"] = "Oil" })
    end
}
