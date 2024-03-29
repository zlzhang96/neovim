return {
  "folke/which-key.nvim",
  config = function(_, opts)
    local wk = require("which-key")
    opts.defaults["<leader>n"] = {
      name = "create",
    }
    wk.register(opts.defaults)
  end,
}
