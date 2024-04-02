local wk = require("which-key")

-- Create and close tabs
vim.keymap.set("n", "<leader>tn", "<CMD>tabnew<CR>")
vim.keymap.set("n", "<leader>tq", "<CMD>tabclose<CR>")
wk.register({
    t = {
        name = "Tabs",
        n = "New tab",
        q = "Close current tab",
    }
}, { prefix = "<leader>" })

-- Change tabs
vim.keymap.set("n", "<C-l>", "<CMD>tabnext<CR>")
vim.keymap.set("t", "<C-l>", "<CMD>tabnext<CR>")
wk.register({ ["<C-l>"] = "Next tab" })
vim.keymap.set("n", "<C-h>", "<CMD>tabprevious<CR>")
vim.keymap.set("t", "<C-h>", "<CMD>tabprevious<CR>")
wk.register({ ["<C-h>"] = "Previous tab" })

-- Create buffers
vim.keymap.set("n", "<leader>bn", "<CMD>enew<CR>")
wk.register({
    b = {
        name = "Buffers",
        n = "New buffer",
    }
}, { prefix = "<leader>" })

-- Change buffers
vim.keymap.set("n", "<C-k>", "<CMD>bnext<CR>")
wk.register({ ["<C-k>"] = "Next buffer" })
vim.keymap.set("n", "<C-j>", "<CMD>bprevious<CR>")
wk.register({ ["<C-j>"] = "Previous buffer" })

-- Create terminal
vim.keymap.set("n", [[<leader>\]], "<CMD>terminal<CR>")
wk.register({ ["<leader>\\"] = "New terminal" })

-- Enable terminal window navigation
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]])
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])

-- Shift selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
wk.register({ ["<C-d>"] = "Jump down with centered cursor" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
wk.register({ ["<C-d>"] = "Jump down with centered cursor" })

-- Center cursor during half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
wk.register({ ["<C-d>"] = "Jump down with centered cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz")
wk.register({ ["<C-u>"] = "Jump up with centered cursor" })

-- Copy text to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
wk.register({ ["<leader>y"] = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y")
wk.register({ ["<leader>y"] = "Copy selection to system clipboard" }, { mode = "v" })
vim.keymap.set("n", "<leader>Y", "\"+Y")
wk.register({ ["<leader>Y"] = "Copy line to system clipboard" })

-- Open Netrw
-- vim.keymap.set("n", "<leader>w", vim.cmd.Ex)
-- wk.register({ ["<leader>w"] = "Open Netrw" })
