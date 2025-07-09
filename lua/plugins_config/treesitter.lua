vim.cmd [[highlight TSCurrentScope guibg=#75f]]

return {
	'nvim-treesitter/nvim-treesitter',
	dependencies = {
		'nvim-treesitter/nvim-treesitter-refactor'
	},
	main = 'nvim-treesitter.configs',
	opts = {
  		ensure_installed = { "html", "css", "scss", "vue", "javascript", "typescript", "tsx", "svelte", "json", "go", "terraform", "sql" },
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
}
