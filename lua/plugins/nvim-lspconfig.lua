return {
  "neovim/nvim-lspconfig",
  opts = {
    -- require Neovim version >= 0.10.0
    -- currently used version is 0.9.5 (stable)
    inlay_hints = { enabled = false },
    codelens = { enabled = false },
    servers = {
      lua_ls = {
        keys = {
          { "<leader>cc", false },
          { "<leader>cC", false },
        },
      },
    },
  },
  init = function()
    -- disable the keymaps for Codelens
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    keys[#keys + 1] = { "<leader>cc", false }
    keys[#keys + 1] = { "<leader>cC", false }
  end,
}
