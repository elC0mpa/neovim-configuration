return {
	"https://gitlab.com/gitlab-org/editor-extensions/gitlab.vim.git",
	event = { "BufReadPre", "BufNewFile" },
	ft = { "go", "javascript", "typescript", "ruby" },
	cond = function()
		return vim.env.GITLAB_TOKEN ~= nil and vim.env.GITLAB_TOKEN ~= ""
	end,
	opts = {
		statusline = {
			enabled = true,
		},
	},
}
