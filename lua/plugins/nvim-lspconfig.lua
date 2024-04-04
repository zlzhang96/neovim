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
    setup = {
      ["*"] = function()
        -- diagnostic
        vim.diagnostic.config({
          float = {
            -- border = "rounded",
            border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
          },
          -- virtual_text = {
          --   prefix = "❯",
          -- },
        })

        local lspconfig = require("lspconfig")
        local handlers = {
          ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "single", max_width = 90 }),
          ["textDocument/signatureHelp"] = vim.lsp.with(
            vim.lsp.handlers.signature_help,
            { border = "single", max_width = 90 }
          ),
        }
        lspconfig.lua_ls.setup({
          handlers = handlers,
          settings = {
            Lua = {
              diagnostics = {
                globals = { "vim" },
              },
            },
          },
        })

        --[[ lspconfig.jdtls.setup({
          handlers = handlers,
        }) ]]
      end,
    },
  },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- disable keymaps for codelens
    -- keys[#keys + 1] = { "<leader>cc", false }
    -- keys[#keys + 1] = { "<leader>cC", false }
    -- disable keymaps for signatureHelp
    keys[#keys + 1] = { "gK", false }
    keys[#keys + 1] = { "<C-K>", false }
  end,
}
