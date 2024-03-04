return {
    "ThePrimeagen/harpoon",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function () 
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local wk = require("which-key")

        vim.keymap.set("n", "<leader>a", mark.add_file)
        wk.register({ ["<leader>a"] = "Add buffer to harpoon" })
        vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
        wk.register({ ["<C-e>"] = "Toggle harpoon menu" })

        vim.keymap.set("n", "<C-1>", function() ui.nav_file(1) end)
        wk.register({ ["<C-1>"] = "Harpoon quick nav 1" })
        vim.keymap.set("n", "<C-2>", function() ui.nav_file(2) end)
        wk.register({ ["<C-2>"] = "Harpoon quick nav 2" })
        vim.keymap.set("n", "<C-3>", function() ui.nav_file(3) end)
        wk.register({ ["<C-3>"] = "Harpoon quick nav 3" })
        vim.keymap.set("n", "<C-4>", function() ui.nav_file(4) end)
        wk.register({ ["<C-4>"] = "Harpoon quick nav 4" })
    end
}
