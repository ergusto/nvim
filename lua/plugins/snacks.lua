return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
      },
    },
    keys = {
      {
        "<leader>o",
        function()
          Snacks.picker.buffers()
        end,
        desc = "Open Buffers",
      },
    },
  },
}
