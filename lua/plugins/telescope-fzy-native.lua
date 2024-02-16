return {
  "nvim-telescope/telescope-fzy-native.nvim",
  event = "VeryLazy",
  config = function()
    require("telescope").setup({})
    require("telescope").load_extension("fzy_native")
  end,
}
