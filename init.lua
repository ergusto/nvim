require("core.options")
require("core.keymaps")
require("core.autocmds")

-- Install `lazy.nvim` plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Plugins
require("lazy").setup({
	"tpope/vim-sleuth", -- Detect tabstop and shiftwidth automatically
	require("plugins.bufferline"),
	require("plugins.gitsigns"),
	require("plugins.conform-nvim"),
	require("plugins.theme"),
	require("plugins.which-key"),
	require("plugins.telescope"),
	require("plugins.lazydev"),
	require("plugins.luvit-meta"),
	require("plugins.lspconfig"),
	require("plugins.mini"),
	require("plugins.treesitter"),
	require("plugins.nvim-cmp"),
	require("plugins.debug"),
	require("plugins.indent_line"),
	require("plugins.lint"),
	require("plugins.autopairs"),
	require("plugins.neo-tree"),
})
