return {
	"projekt0n/github-nvim-theme",
	lazy = false,
	priority = 1000,
	init = function()
		require("github-theme").setup({})
		vim.cmd.colorscheme("github_dark_dimmed")
	end,
}
