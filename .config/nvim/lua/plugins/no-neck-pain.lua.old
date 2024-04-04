return {
    "shortcuts/no-neck-pain.nvim", version = "*",
    config = function()
        require("no-neck-pain").setup({
            width = 120,
            autocmds = {
                enableOnVimEnter = true,
                enableOnTabEnter = true,
                skipEnteringNoNeckPainBuffer = true,
            },
            buffers = {
                scratchPad = {
                    enabled= false
                },
                wo = {
                    fillchars = "eob: "
                }
            }
        })
        local wk = require("which-key")
        vim.keymap.set("n", "<leader>n", "<CMD>NoNeckPain<CR>")
        wk.register({ ["<leader>n"] = "No Neck Pain" })
    end
}
