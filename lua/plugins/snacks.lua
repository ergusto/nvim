return {
  {
    "nvimdev/snacks.nvim",
    opts = {},
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
