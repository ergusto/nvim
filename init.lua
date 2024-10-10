require("core.options")
require("core.keymaps")
require("core.autocmds")
require("core.lazy")

-- Plugins
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	require("plugins.gitsigns"),
	require("plugins.conform"),
	require("plugins.github-theme"),
	require("plugins.themery"),
	require("plugins.which-key"),
	require("plugins.telescope"),
	require("plugins.lazydev"),
	require("plugins.lazygit"),
	require("plugins.lspconfig"),
	require("plugins.mini"),
	require("plugins.treesitter"),
	require("plugins.nvim-cmp"),
	require("plugins.lint"),
	require("plugins.autopairs"),
	require("plugins.neo-tree"),
	require("plugins.trouble"),
	require("plugins.neotest"),
	require("plugins.harpoon"),
})
