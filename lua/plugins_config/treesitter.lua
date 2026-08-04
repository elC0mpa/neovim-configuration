vim.cmd([[highlight TSCurrentScope guibg=#75f]])

return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	lazy = false,
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter").setup({
			install_dir = vim.fn.stdpath("data") .. "/site",
		})
		require("nvim-treesitter").install({
			"c",
			"lua",
			"vim",
			"vimdoc",
			"query",
			"markdown",
			"markdown_inline",
			"bash",
			"html",
			"css",
			"scss",
			"vue",
			"javascript",
			"typescript",
			"tsx",
			"svelte",
			"json",
			"go",
			"terraform",
			"sql",
		})
	end,
}
