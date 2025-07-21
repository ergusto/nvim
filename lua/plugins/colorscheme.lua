return {
  -- Colorscheme
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
