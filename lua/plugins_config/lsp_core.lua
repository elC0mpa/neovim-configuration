return {
	{
		"williamboman/mason.nvim",
		config = true
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			ensure_installed = { "dockerls", "gopls", "html", "css_variables", "css_ls", "cssmodules_ls", "tailwindcss", "ts_ls", "eslint", "terraformls" }
		}
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local servers = {
				'pylsp', 'terraformls', 'gopls', 'angularls', 'prismals', 'lua_ls',
				'dockerls', 'html', 'cssls', 'css_variables', 'cssmodules_ls',
				'tailwindcss', 'ts_ls', 'eslint', 'jsonls'
			}

			for _, lsp in ipairs(servers) do
				vim.lsp.config(lsp, {
					capabilities = capabilities,
				})
				vim.lsp.enable(lsp)
			end

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
