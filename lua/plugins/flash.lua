return {
  "folke/flash.nvim",
  event = "VeryLazy",
  opts = {},
  keys = {
    {
      "/",
      mode = { "n", "x", "o" },
      function()
        -- forward search only
        require("flash").jump({
          search = { forward = true, wrap = false, multi_window = false },
        })
      end,
      desc = "Flash",
    },
  },
}
