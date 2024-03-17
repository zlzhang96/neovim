return {
  "folke/tokyonight.nvim",
  opts = {
    transparent = true,
    styles = {
      sidebars = "transparent",
      floats = "transparent",
    },
    -- add personal colors
    on_colors = function(c)
      c.nord_orange = "#EBCB8B"
      c.nord_dark = "#434C5E"
      c.nord_teal = "#88C0D0"
      c.nord_blue = "#5EB1AC"
      c.nord_pink = "#B48EAD"
      c.nord_white = "#ECEFF4"
      c.nord_grey = "#434C5E"
      c.nord_red = "#BF616A"
    end,
    -- customize color
    on_highlights = function(hl, c)
      -- current cursor line
      hl.CursorLine = {
        bg = c.nord_grey,
      }
      -- hint (like unused vars)
      hl.DiagnosticVirtualTextHint = {
        bg = "NONE",
        fg = c.nord_pink,
      }
      -- warn (like duplicate index)
      hl.DiagnosticVirtualTextWarn = {
        bg = "NONE",
        fg = c.orange,
      }
      -- error (like syntax error)
      hl.DiagnosticVirtualTextError = {
        bg = "NONE",
        fg = c.nord_red,
      }
      -- info (but on what situation?)
      hl.DiagnosticVirtualTextInfo = {
        bg = "NONE",
        fg = c.nord_white,
      }

      hl.Comment = { fg = c.nord_teal }

      -- other indent line
      hl.IblIndent = { fg = c.nord_grey, nocombine = false }
      -- current indent line
      hl.MiniIndentscopeSymbol = { fg = c.nord_orange, nocombine = true }

      -- change the color of unused var in place
      hl.DiagnosticUnnecessary = {
        fg = c.warning,
        bg = "NONE",
      }

      hl.AlphaHeader = {
        fg = c.white,
      }

      -- relative line number
      hl.LineNr = {
        fg = c.white,
      }
      -- current line number
      hl.CursorLineNr = {
        fg = c.nord_orange,
      }
    end,
  },

  --[[
  --gonna blend with onedark
  "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "dark",
      -- transparent = true,
      term_colors = true,
      colors = {},
      hightlights = {
        AlphaHeader = {
          fg = "$green",
        },
      },
    })
    require("onedark").load()
  end,
  --]]
}
