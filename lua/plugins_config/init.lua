return {
	{
		'morhetz/gruvbox',
		config = function()
			local hl_store = {
				NeogitDiffAddHighlight = { bg = "#b8bb26", fg = "#282828" }
			}
			vim.cmd('colorscheme gruvbox')
			vim.g.gruvbox_contrast_dark = "hard"
			for group, hl in pairs(hl_store) do
      				hl.default = true
      				vim.api.nvim_set_hl(0, group, hl)
  			end
		end
	},
	{
		'mhinz/vim-startify'
	},
	{
		'tpope/vim-repeat'
	}
}
