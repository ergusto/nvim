return {
  {
    "dmmulroy/ts-error-translator.nvim",
    event = "LspAttach",
    config = function()
      require("ts-error-translator").setup()

      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function()
          local diagnostics = vim.diagnostic.get(0, { lnum = vim.fn.line(".") - 1 })

          if #diagnostics > 0 then
            vim.diagnostic.open_float(nil, { focus = false, scope = "cursor" })
          end
        end,
      })
    end,
  },
}
