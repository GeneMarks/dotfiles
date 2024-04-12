return {
    "madskjeldgaard/cppman.nvim",
    dependencies = "MunifTanjim/nui.nvim",
    config = function()
        local cppman = require("cppman")
        cppman.setup({})

        vim.keymap.set("n", "<leader>mw", function()
            cppman.open_cppman_for(vim.fn.expand("<cword>"))
        end, { desc = "Search word in CPPman" })

        vim.keymap.set("n", "<leader>ms", function()
            cppman.input()
        end, { desc = "Search CPPman" })
    end
}
