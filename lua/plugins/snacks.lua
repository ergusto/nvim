return {
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        hidden = true,
        ignored = true,
        exclude = {
          ".git",
          "node_modules",
          ".next",
          "dist",
          ".DS_Store",
        },
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
