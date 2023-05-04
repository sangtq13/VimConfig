vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"
vim.opt.termguicolors = true
vim.cmd [[highlight IndentBlanklineIndent1 guifg=#747474 gui=nocombine]]

require("indent_blankline").setup {
    show_end_of_line = true,
    space_char_blankline = " ",
    char_highlight_list = {
      "IndentBlanklineIndent1",
    },
    space_char_highlight_list = { 
      "IndentBlanklineIndent1",
    },
}
