return {
  require("conform").setup({
    formatters_by_ft = {
      lua = { "stylua" },
      sh = { "shfmt" },
      cc = { "clang_format" },
      cpp = { "clang_format" },
      c = { "clang_format" },
      java = { "google-java-format" },
    },
  }),
}
