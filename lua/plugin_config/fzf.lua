require('fzf-lua').setup{
  winopts = {
    hl = { border = "FloatBorder", }
  }
}

vim.keymap.set("n", "<c-f>",
  "<cmd>lua require('fzf-lua').files()<CR>", { silent = true })

vim.keymap.set("n", "<c-g>",
  "<cmd>lua require('fzf-lua').grep()<CR>", { silent = true })
