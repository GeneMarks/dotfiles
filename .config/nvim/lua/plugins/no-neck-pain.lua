return {
    "shortcuts/no-neck-pain.nvim", version = "*",
    opts = {
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
    }
}
