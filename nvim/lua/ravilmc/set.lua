vim.g.mapleader = " "
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.termguicolors = true
vim.opt.smartindent = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.keymap.set('n' , '<c-k>' , ':wincmd k<cr>')
vim.keymap.set('n' , '<c-j>' , ':wincmd j<cr>')
vim.keymap.set('n' , '<c-h>' , ':wincmd h<cr>')
vim.keymap.set('n' , '<c-l>' , ':wincmd l<cr>')

