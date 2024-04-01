-- Use global status line
vim.opt.laststatus = 3

-- Relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- Add padding to scroll
vim.opt.scrolloff = 8

-- Set tab width to 4 spaces
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Set case insensitive
vim.opt.ignorecase = true

-- Set search highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Disable auto backups
vim.opt.swapfile = false
vim.opt.backup = false

-- Enable persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

-- Fast update time
vim.opt.updatetime = 50

-- Use fish shell
vim.opt.shell = "/opt/homebrew/bin/fish"

-- Enable full color terminal
vim.opt.termguicolors = true
