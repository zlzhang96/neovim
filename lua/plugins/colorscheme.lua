return {
  {
    "folke/tokyonight.nvim",
    opts = {
      -- transparent = true,
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
      end,
    },
  },
}
