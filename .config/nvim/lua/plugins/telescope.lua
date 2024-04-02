return {
    "nvim-telescope/telescope.nvim", tag = "0.1.6",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "debugloop/telescope-undo.nvim",
        "rmagatti/session-lens",
        "rmagatti/auto-session",
    },
    config = function ()
        -- Configs
        local telescope = require("telescope")
        telescope.setup({
            extensions = {
                undo = {},
            },
        })

        -- Load extensions
        telescope.load_extension("undo")
        telescope.load_extension("session-lens")

        -- Keymaps
        local wk = require("which-key")
        local builtin = require("telescope.builtin")

        vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})
        vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
        vim.keymap.set("n", "<leader>fu", "<CMD>Telescope undo<CR>")
        vim.keymap.set("n", "<leader>fs", "<CMD>SearchSession<CR>")

        wk.register({
            f = {
                name = "Telescope",
                f = "Find files",
                g = "Live grep",
                b = "Search buffers",
                h = "Search help tags",
                u = "Search undo history",
                s = "Search sessions",
            }
        }, { prefix = "<leader>" })
    end
}
