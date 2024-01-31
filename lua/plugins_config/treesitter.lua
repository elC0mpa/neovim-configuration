vim.cmd [[highlight TSCurrentScope guibg=#75f]]

return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-refactor'
	},
	config = function()
		require('nvim-treesitter.configs').setup{
  			ensure_installed = { "html", "css", "scss", "vue", "javascript", "typescript", "tsx", "svelte", "json" },
  			highlight = {
    				enable = true,
    				use_languagetree = true,
  			},
  			refactor = {
    				highlight_definitions = {
      					enable = true,
      					clear_on_cursor_move = true
    				},
    				highlight_current_scope = { enable = true },
    				smart_rename = {
      					enable = true,
      					keymaps = {
        					smart_rename = "tr",
      					},
    				},
  			},

		}
	end
}
