return {
	{
		'morhetz/gruvbox',
		config = function()
			vim.cmd('colorscheme gruvbox')
			vim.g.gruvbox_contrast_dark = "hard"
			vim.cmd(':highlight NeogitDiffAddHighlight guifg=#282828 guibg=#b8bb26')
		end
	},
	{
		'mhinz/vim-startify'
	},
	{
		'tpope/vim-repeat'
	}
}
