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
      rust = { "rustfmt" },
      sh = { "shfmt" },
      bash = { "shfmt" },

      -- javascript = { "prettier_d" },
      -- vue = { "prettier_d" },
    },

    -- See :help conform.format for details.
    --   format_on_save = {
    --     false,
    --   },
    --   format_after_save = {
    --     false,
    --   },
  }),
}
