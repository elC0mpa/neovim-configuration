vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
     enabled = true,
     char = "|",
     char_blankline = '┆',
}
