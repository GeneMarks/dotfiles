-- Enter normal mode
vim.keymap.set({ "i", "v" }, "jk", "<ESC>", { noremap = true })
vim.keymap.set({ "i", "v" }, "kj", "<ESC>", { noremap = true })

-- Save to disk
vim.keymap.set({ "n", "v", "i" }, "<C-s>", "<CMD>update<CR>", { desc = "Update buffer", noremap = true })
vim.keymap.set("n", "<leader>w", "<CMD>wall<CR>", { desc = "Write all", noremap = true })

-- Create and close tabs
vim.keymap.set("n", "<leader>tn", "<CMD>tabnew<CR>", { desc = "New tab", noremap = true })
vim.keymap.set("n", "<leader>tq", "<CMD>tabclose<CR>", { desc = "Close current tab", noremap = true })
vim.keymap.set("n", "<leader>to", "<CMD>tabonly<CR>", { desc = "Close all other tabs", noremap = true })

-- Change tabs
vim.keymap.set({ "n", "t" }, "<C-l>", "<CMD>tabnext<CR>", { desc = "Next tab", noremap = true })
vim.keymap.set({ "n", "t" }, "<C-h>", "<CMD>tabprevious<CR>", { desc = "Previous tab", noremap = true })

vim.keymap.set({ "n", "t" }, "<C-1>", "<CMD>tabnext 1<CR>", { desc = "Jump to tab 1", noremap = true })
vim.keymap.set({ "n", "t" }, "<C-2>", "<CMD>tabnext 2<CR>", { desc = "Jump to tab 2", noremap = true })
vim.keymap.set({ "n", "t" }, "<C-3>", "<CMD>tabnext 3<CR>", { desc = "Jump to tab 3", noremap = true })
vim.keymap.set({ "n", "t" }, "<C-4>", "<CMD>tabnext 4<CR>", { desc = "Jump to tab 4", noremap = true })
vim.keymap.set({ "n", "t" }, "<C-5>", "<CMD>tabnext 5<CR>", { desc = "Jump to tab 5", noremap = true })
vim.keymap.set({ "n", "t" }, "<C-6>", "<CMD>tabnext 6<CR>", { desc = "Jump to tab 6", noremap = true })

-- Create and delete buffers
vim.keymap.set("n", "<leader>bn", "<CMD>enew<CR>", { desc = "New buffer", noremap = true })
vim.keymap.set("n", "<leader>ba", "<CMD>%bdelete<CR>", { desc = "Delete all buffers", noremap = true })
vim.keymap.set("n", "<leader>bo", "<CMD>%bdelete|edit#|bdelete#<CR>", { desc = "Delete all other buffers", noremap = true })

-- Change buffers
vim.keymap.set("n", "<C-k>", "<CMD>bnext<CR>", { desc = "Next buffer", noremap = true })
vim.keymap.set("n", "<C-j>", "<CMD>bprevious<CR>", { desc = "Previous buffer", noremap = true })

-- Terminal window navigation
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], { noremap = true })
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], { noremap = true })

-- Shift selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Shift selection down", noremap = true })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Shift selection up", noremap = true })

-- Center cursor during half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down with centered cursor", noremap = true })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up with centered cursor", noremap = true })
