return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      yaml = { "yamlfmt" },
    },
    formatters = {
      yamlfmt = {
        command = "yamlfmt",
        args = { "-" }, -- uses stdin and default options
        stdin = true,
      },
    },
  },
}
