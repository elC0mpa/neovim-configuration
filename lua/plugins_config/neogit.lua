return {
  "NeogitOrg/neogit",
  dependencies = {
	"nvim-lua/plenary.nvim",         -- required
    	"sindrets/diffview.nvim",        -- optional - Diff integration
    	"nvim-telescope/telescope.nvim", -- optional
  },
  opts = {
	disable_signs = true,
	graph_style = "unicode",
	status = {
		recent_commit_count = 20
	},
	integrations = {
		telescope = true,
		diffview = true
	}
  },
}
