vim.cmd("syntax reset")
vim.o.background = "dark" 

vim.g.mapleader = " "
vim.g.maplocalleader = " "


local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

vim.o.number = true
vim.o.relativenumber = true
vim.o.termguicolors = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

require("lazy").setup("plugins")
require("core.keymaps")

vim.cmd("syntax reset")
vim.o.background = "dark" 


vim.cmd("colorscheme github_light_default")


