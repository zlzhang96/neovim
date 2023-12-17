return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_highlights = function(hl, c)
        -- change the color of unused var
        hl.DiagnosticUnnecessary = {
          -- fg = c.warning,
        }
        -- change the AlphaHeader color
        hl.AlphaHeader = {
          fg = c.white,
        }
        -- change the relative Line number
        hl.LineNr = {
          fg = c.white,
        }
        hl.CursorLineNr = {
          fg = c.white,
        }
      end,
    },

    -- {
    --   "shaunsingh/nord.nvim",
    --   config = function()
    --     vim.g.nord_disable_background = true
    --     require("nord").set()
    --   end,
    -- },
    -- {
    --   "LazyVim/LazyVim",
    --   opts = {
    --     colorscheme = "nord",
    --   },
    -- },
  },
}
