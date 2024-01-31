return {
	{
		'morhetz/gruvbox',
		config = function()
			vim.cmd('colorscheme gruvbox')
			vim.g.gruvbox_contrast_dark = "hard"
		end
	},
	{
		'mhinz/vim-startify'
	},
	{
		'tpope/vim-repeat'
	}
}
