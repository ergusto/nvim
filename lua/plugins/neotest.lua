return {
  "nvim-neotest/neotest",
  dependencies = {
    "haydenmeade/neotest-jest", -- Jest adapter
  },
  opts = function(_, opts)
    table.insert(
      opts.adapters,
      require("neotest-jest")({
        jestCommand = "npm test --", -- or "yarn test --"
        jestConfigFile = "jest.config.js", -- adjust if needed
        env = { CI = true },
        cwd = function()
          return vim.fn.getcwd()
        end,
      })
    )
  end,
}
