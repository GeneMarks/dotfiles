return {
    "shortcuts/no-neck-pain.nvim", version = "*",
    opts = {
        autocmds = {
            enableOnVimEnter = true
        },
        buffers = {
            scratchPad = {
                enabled= false
            },
            wo = {
                fillchars = "eob: "
            }
        }
    }
}
