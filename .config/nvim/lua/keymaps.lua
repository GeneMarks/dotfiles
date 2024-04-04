-- Create and close tabs
vim.keymap.set("n", "<leader>tn", "<CMD>tabnew<CR>", { desc = "New tab" })
vim.keymap.set("n", "<leader>tq", "<CMD>tabclose<CR>", { desc = "Close current tab" })
vim.keymap.set("n", "<leader>to", "<CMD>tabonly<CR>", { desc = "Close all other tabs" })

-- Change tabs
vim.keymap.set("n", "<C-l>", "<CMD>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("t", "<C-l>", "<CMD>tabnext<CR>", { desc = "Next tab" })
vim.keymap.set("n", "<C-h>", "<CMD>tabprevious<CR>", { desc = "Previous tab" })
vim.keymap.set("t", "<C-h>", "<CMD>tabprevious<CR>", { desc = "Previous tab" })

vim.keymap.set("n", "<C-1>", "1gt", { desc = "Jump to tab 1" })
vim.keymap.set("t", "<C-1>", [[<C-\><C-n>1gt]], { desc = "Jump to tab 1" })
vim.keymap.set("n", "<C-2>", "2gt", { desc = "Jump to tab 2" })
vim.keymap.set("t", "<C-2>", [[<C-\><C-n>2gt]], { desc = "Jump to tab 2" })
vim.keymap.set("n", "<C-3>", "3gt", { desc = "Jump to tab 3" })
vim.keymap.set("t", "<C-3>", [[<C-\><C-n>3gt]], { desc = "Jump to tab 3" })
vim.keymap.set("n", "<C-4>", "4gt", { desc = "Jump to tab 4" })
vim.keymap.set("t", "<C-4>", [[<C-\><C-n>4gt]], { desc = "Jump to tab 4" })
vim.keymap.set("n", "<C-5>", "5gt", { desc = "Jump to tab 5" })
vim.keymap.set("t", "<C-5>", [[<C-\><C-n>5gt]], { desc = "Jump to tab 5" })
vim.keymap.set("n", "<C-6>", "6gt", { desc = "Jump to tab 6" })
vim.keymap.set("t", "<C-6>", [[<C-\><C-n>6gt]], { desc = "Jump to tab 6" })

-- Create and delete buffers
vim.keymap.set("n", "<leader>bn", "<CMD>enew<CR>", { desc = "New buffer" })
vim.keymap.set("n", "<leader>ba", "<CMD>%bdelete<CR>", { desc = "Delete all buffers" })
vim.keymap.set("n", "<leader>bo", "<CMD>%bdelete|edit#|bdelete#<CR>", { desc = "Delete all other buffers" })

-- Change buffers
vim.keymap.set("n", "<C-k>", "<CMD>bnext<CR>", { desc = "Next buffer" })
vim.keymap.set("n", "<C-j>", "<CMD>bprevious<CR>", { desc = "Previous buffer" })

-- Enable terminal window navigation
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]])
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]])

-- Shift selections
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Shift selection down" })
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Shift selection up" })

-- Center cursor during half-page jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Jump down with centered cursor" })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Jump up with centered cursor" })

-- Copy text to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y", { desc = "Copy to system clipboard" })
vim.keymap.set("v", "<leader>y", "\"+y", { desc = "Copy selection to system clipboard" })
vim.keymap.set("n", "<leader>Y", "\"+Y", { desc = "Copy line to system clipboard" })

-- Open Netrw
-- vim.keymap.set("n", "<leader>w", vim.cmd.Ex, { desc = "Open Netrw" })
