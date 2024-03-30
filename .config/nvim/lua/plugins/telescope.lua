return {
    "nvim-telescope/telescope.nvim", tag = "0.1.4",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "debugloop/telescope-undo.nvim"
    },
    config = function ()
        local telescope = require("telescope")
        telescope.setup({
            extensions = {
                undo = {},
            },
        })
        telescope.load_extension("undo")

        local wk = require("which-key")
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>fu", "<CMD>Telescope undo<CR>")

        wk.register({
            f = {
                name = "Telescope",
                f = "Find files",
                g = "Live grep",
                b = "Search buffers",
                h = "Search help tags",
                u = "Undo history",
            }
        }, { prefix = "<leader>" })
    end
}
