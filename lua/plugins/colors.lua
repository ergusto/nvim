return {
  {
    "echasnovski/mini.hipatterns",
    version = "*",
    event = "VeryLazy",
    config = function()
      local hipatterns = require("mini.hipatterns")

      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "lua", "css" },
        callback = function()
          hipatterns.setup({
            highlighters = {
              hex_color = hipatterns.gen_highlighter.hex_color(),
            },
          })
        end,
      })
    end,
  },
}
