return {
  "sindrets/diffview.nvim",
  enabled = false,
  config = function()
    vim.keymap.set("n", "<F5>", ":DiffviewOpen<cr>")
  end,
}
