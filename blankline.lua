vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
     enabled = true,
     show_current_context = true,
     char = "|",
     char_blankline = '┆',
     use_treesitter = false,
     context_char = '*',
     use_treesitter_scope = false,
}
