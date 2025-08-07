return {
  -- Disable LazyVim's default colorschemes
  { "folke/tokyonight.nvim", enabled = false },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "estuary_dark",
    },
  },

  -- Colorscheme
  {
    "ergusto/estuary.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("estuary_dark")
    end,
  },
}
