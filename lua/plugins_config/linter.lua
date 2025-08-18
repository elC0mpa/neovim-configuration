return {
	"mfussenegger/nvim-lint",
	config = function ()
		require("lint").linters_by_ft = {
			javascript = { "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescript = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			vue = { "eslint_d" },

			go = { "golangcilint" },
			sql = { "sqlfluff" },
		}
	end,
	keys = {
		{
			"<space>l",
			function()
				require("lint").try_lint()
			end,
			mode = "",
			desc = "Lint buffer",
		},
	},
}
