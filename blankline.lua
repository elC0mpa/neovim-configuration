vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
}
-- require("indent_blankline").setup {
--     indentLine_enabled = 1,
--     filetype_exclude = {
--       "help",
--       "terminal",
--       "alpha",
--       "packer",
--       "lspinfo",
--       "TelescopePrompt",
--       "TelescopeResults",
--       "mason",
--       "",
--     },
--     buftype_exclude = { "terminal" },
--     show_trailing_blankline_indent = false,
--     show_first_indent_level = false,
--     show_current_context = true,
--     show_current_context_start = true,
-- }
