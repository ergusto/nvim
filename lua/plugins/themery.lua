return {
	"zaldih/themery.nvim",
	lazy = false,
	config = function()
		require("themery").setup({
			themes = { "github_light", "github_dark_dimmed" },
		})
	end,
}
