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
vim.keymap.set("n", "<C-l>", "gt")
wk.register({ ["<C-l>"] = "Next tab" })
vim.keymap.set("n", "<C-h>", "gT")
wk.register({ ["<C-h>"] = "Previous tab" })

-- Change buffers
vim.keymap.set("n", "<C-k>", "<CMD>bnext<CR>")
wk.register({ ["<C-k>"] = "Next buffer" })
vim.keymap.set("n", "<C-j>", "<CMD>bprevious<CR>")
wk.register({ ["<C-j>"] = "Previous buffer" })

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

-- Navigate diagnostics
vim.keymap.set('n', 'gl', '<CMD>lua vim.diagnostic.open_float()<CR>')
wk.register({ ["gl"] = "Open diagnostic" })
vim.keymap.set('n', '[d', '<CMD>lua vim.diagnostic.goto_prev()<CR>')
wk.register({ ["[d"] = "Previous diagnostic" })
vim.keymap.set('n', ']d', '<CMD>lua vim.diagnostic.goto_next()<CR>')
wk.register({ ["]d"] = "Next diagnostic" })

-- Open Netrw
-- vim.keymap.set("n", "<leader>w", vim.cmd.Ex)
-- wk.register({ ["<leader>w"] = "Open Netrw" })
