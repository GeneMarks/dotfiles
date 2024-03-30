-- Set leader key
vim.g.mapleader = " "

-- Install lazy plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins, themes, and settings
require("lazy").setup({
    spec = {
        { import = "plugins" },
        { import = "themes" }
    }
})
require("theme")
require("options")
require("keymaps")
require("autocmds")
