local wk = require("which-key")

-- Create and close tabs
vim.keymap.set("n", "<leader>tn", "<CMD>tabnew<CR>")
vim.keymap.set("n", "<leader>tq", "<CMD>tabclose<CR>")
vim.keymap.set("n", "<leader>to", "<CMD>tabonly<CR>")
wk.register({
    t = {
        name = "Tabs",
        n = "New tab",
        q = "Close current tab",
        o = "Close all other tabs",
    }
}, { prefix = "<leader>" })

-- Change tabs
vim.keymap.set("n", "<C-l>", "<CMD>tabnext<CR>")
vim.keymap.set("t", "<C-l>", "<CMD>tabnext<CR>")
wk.register({ ["<C-l>"] = "Next tab" })
vim.keymap.set("n", "<C-h>", "<CMD>tabprevious<CR>")
vim.keymap.set("t", "<C-h>", "<CMD>tabprevious<CR>")
wk.register({ ["<C-h>"] = "Previous tab" })

vim.keymap.set("n", "<C-1>", "1gt")
vim.keymap.set("t", "<C-1>", [[<C-\><C-n>1gt]])
wk.register({ ["<C-1>"] = "Jump to tab 1" })
vim.keymap.set("n", "<C-2>", "2gt")
vim.keymap.set("t", "<C-2>", [[<C-\><C-n>2gt]])
wk.register({ ["<C-2>"] = "Jump to tab 2" })
vim.keymap.set("n", "<C-3>", "3gt")
vim.keymap.set("t", "<C-3>", [[<C-\><C-n>3gt]])
wk.register({ ["<C-3>"] = "Jump to tab 3" })
vim.keymap.set("n", "<C-4>", "4gt")
vim.keymap.set("t", "<C-4>", [[<C-\><C-n>4gt]])
wk.register({ ["<C-4>"] = "Jump to tab 4" })
vim.keymap.set("n", "<C-5>", "5gt")
vim.keymap.set("t", "<C-5>", [[<C-\><C-n>5gt]])
wk.register({ ["<C-5>"] = "Jump to tab 5" })
vim.keymap.set("n", "<C-6>", "6gt")
vim.keymap.set("t", "<C-6>", [[<C-\><C-n>6gt]])
wk.register({ ["<C-6>"] = "Jump to tab 6" })

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
