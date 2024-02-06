return {
  "stevearc/conform.nvim",
  event = "VeryLazy",
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      c = { "clang_format" },
      cc = { "clang_format" },
      cpp = { "clang_format" },
      java = { "google-java-format" },
      sh = { "shfmt" },
      bash = { "shfmt" },
      -- javascript = { "prettier_d" },
      -- vue = { "prettier_d" },
    },
  }),
}
