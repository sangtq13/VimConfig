vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.mouse = 'a'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true 
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- use spaces for tabs and whatnot
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.cmd [[ set noswapfile ]]

--Line numbers
vim.wo.number = true


