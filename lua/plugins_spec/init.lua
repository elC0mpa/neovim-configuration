return {
	{
		'morhetz/gruvbox',
		config = function ()
			vim.o.termguicolors = true
			vim.cmd('syntax on')
			vim.g.gruvbox_italic=1
			vim.cmd('colorscheme gruvbox')
		end
	}
}
