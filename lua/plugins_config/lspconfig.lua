return {
	"neovim/nvim-lspconfig",
	config = function()
		require 'lspconfig'.gopls.setup {}
		require 'lspconfig'.lua_ls.setup {}
		require 'lspconfig'.dockerls.setup {}

		require 'lspconfig'.html.setup {}
		require 'lspconfig'.css_ls.setup {}
		require 'lspconfig'.css_variables.setup {}
		require 'lspconfig'.cssmodules_ls.setup {}
		require 'lspconfig'.cssls.setup {}
		require 'lspconfig'.tailwindcss.setup {}

		require 'lspconfig'.tsserver.setup {}
		require 'lspconfig'.eslint.setup {}

		vim.api.nvim_create_autocmd('LspAttach', {
			group = vim.api.nvim_create_augroup('UserLspConfig', {}),
			callback = function(ev)
				-- Enable completion triggered by <c-x><c-o>
				vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

				-- Buffer local mappings.
				-- See `:help vim.lsp.*` for documentation on any of the below functions
				local opts = { buffer = ev.buf }
				vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
				vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
				vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
				vim.keymap.set({ 'n', 'v' }, 'ga', vim.lsp.buf.code_action, opts)
				vim.keymap.set('n', 'gR', require('telescope.builtin').lsp_references, opts)
				-- vim.keymap.set('n', 'd[', vim.diagnostic.goto_prev(), opts)
				-- vim.keymap.set('n', 'd]', vim.diagnostic.goto_next(), opts)
				vim.keymap.set('n', '<space>f', function()
					vim.lsp.buf.format { async = true }
				end, opts)
			end,
		})
	end
}
