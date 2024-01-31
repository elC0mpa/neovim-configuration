vim.opt.termguicolors = true
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

return {
	'lukas-reineke/indent-blankline.nvim',
	version = 'v2.*',
	opts = {
     		enabled = true,
     		char = "|",
     		char_blankline = '┆',

	}
}
