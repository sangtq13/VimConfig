local opts = { noremap = true, silent = true }

-- Shorten function name
local keymap = vim.keymap.set


--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>a", ":keepjumps normal! ggVG<cr>")

-- Saving and stuff
keymap("n", "<leader>q", ":q<CR>", opts)
keymap("n", "<leader>qa", ":qa<CR>", opts)

keymap("n", "<leader>w", ":w<CR>", opts)
keymap("n", "<leader>wa", ":wa<CR>", opts)

keymap("n", "<leader>wqa", ":wqa<CR>", opts)
keymap("n", "<leader>wq", ":wq<CR>", opts)

-- =======================================================
-- Normal
-- Move text up and down
keymap("n", "<A-j>", "<Esc>:m .+1<CR>==", opts)
keymap("n", "<A-k>", "<Esc>:m .-2<CR>==", opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Copy to clipboard
vim.keymap.set({'n', 'x'}, 'cp', '"+y')
vim.keymap.set({'n', 'x'}, 'cv', '"+p')


