return {
  -- Colorscheme
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.everforest_enable_italic = true
  --     vim.g.everforest_background = "hard"
  --     vim.cmd.colorscheme("everforest")
  --   end,
  -- },
  {
    "ergusto/pizazz.nvim",
    lazy = false,
    priority = 1000,
    dependencies = {
      { "rktjmp/lush.nvim", lazy = true },
    },
    config = function()
      vim.cmd.colorscheme("pizazz_dark")
    end,
  },
}
