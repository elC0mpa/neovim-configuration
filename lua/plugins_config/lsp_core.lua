return {
	{
		"williamboman/mason.nvim",
		config = true
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "dockerls", "gopls", "html", "css_variables", "css_ls", "cssmodules_ls", "tailwindcss", "ts_ls", "eslint" }
		}
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			require 'lspconfig'.terraformls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.angularls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.gopls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.angularls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.prismals.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.lua_ls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.dockerls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.html.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.cssls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.css_variables.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.cssmodules_ls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.cssls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.tailwindcss.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.ts_ls.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.eslint.setup {
				capabilities = capabilities
			}
			require 'lspconfig'.jsonls.setup {
				capabilities = capabilities
			}

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
				end,
			})
		end
	}
}
