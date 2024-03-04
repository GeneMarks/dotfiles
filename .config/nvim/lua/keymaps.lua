local wk = require("which-key")

-- Shift selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center cursor during half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
wk.register({ ["<C-d>"] = "Jump down with centered cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz")
wk.register({ ["<C-u>"] = "Jump up with centered cursor" })

-- Keep pasted text in buffer
vim.keymap.set("x", "<leader>p", "\"_dP")
wk.register({ ["<leader>p"] = "Paste & keep buffer" }, { mode = "x" })

-- Copy text to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
wk.register({ ["<leader>y"] = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y")
wk.register({ ["<leader>y"] = "Copy selection to system clipboard" }, { mode = "v" })
vim.keymap.set("n", "<leader>Y", "\"+Y")
wk.register({ ["<leader>Y"] = "Copy line to system clipboard" })

-- Show full diagnostic message
vim.keymap.set("n", "<leader>e", function ()
    vim.diagnostic.open_float(0, { scope = "line" })
end)
wk.register({ ["<leader>e"] = "Show diagnostic message" })

-- Open Netrw
vim.keymap.set("n", "<leader>w", vim.cmd.Ex)
wk.register({ ["<leader>w"] = "Open Netrw" })
