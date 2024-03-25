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
      c.nord_yellow = "#EBCB8B"
      c.nord_dark = "#434C5E"
      c.nord_teal = "#88C0D0"
      c.nord_blue = "#5E81AC"
      c.nord_pink = "#B48EAD"
      c.nord_white = "#ECEFF4"
      c.nord_grey = "#434C5E"
      c.nord_red = "#BF616A"
      c.nord_green = "#A3BE8C"
      c.nord_orange = "#D08770"

      c.onedark_blue = "#61AFEF"
      c.onedark_white = "#ABB2BF"
      c.onedark_cyan = "#56b6c2"
    end,
    -- customize color
    on_highlights = function(hl, c)
      local util = require("tokyonight.util")

      -- hl.Constant = {
      --   fg = "#56b6c2",
      -- }

      hl.WhichKey = {
        fg = c.nord_green,
      }
      hl.WhichKeySeparator = {
        fg = c.nord_yellow,
      }
      hl.WhichKeyDesc = {
        -- fg = c.nord_white,
        fg = c.onedark_white,
      }
      hl.WhichKeyGroup = {
        fg = c.nord_pink,
      }
      hl["@variable.member"] = {
        fg = c.onedark_cyan,
      }
      hl["@property"] = {
        fg = c.onedark_cyan,
      }

      hl.IlluminatedWordRead = {
        bg = "NONE",
        underline = true,
      }

      -- Git
      hl.GitSignsAdd = {
        fg = c.nord_green,
      }
      hl.GitSignsChange = {
        fg = c.onedark_blue,
      }
      hl.NeoTreeGitAdded = {
        fg = c.nord_green,
      }

      hl.NeoTreeGitModified = {
        fg = c.onedark_blue,
      }
      hl.NeoTreeGitUntracked = {
        fg = c.nord_orange,
        italic = true,
      }

      hl.NeoTreeNormal = {
        fg = c.onedark_white,
      }
      hl.NeoTreeFileName = hl.NeoTreeNormal

      hl.FlashLabel = {
        fg = c.nord_grey,
        bg = c.nord_green,
      }
      hl.FlashCurrent = {
        fg = c.nord_grey,
        bg = c.nord_orange,
      }
      hl.FlashMatch = {
        fg = c.nord_grey,
        bg = c.nord_yellow,
      }
      hl.Search = hl.FlashMatch

      -- float border in many places
      hl.FloatBorder = {
        fg = c.nord_yellow,
      }

      -- current cursor line
      hl.CursorLine = {
        bg = c.nord_grey,
      }
      -- hint (like unused vars)
      hl.DiagnosticVirtualTextHint = {
        fg = c.nord_pink,
        bg = "NONE",
      }
      -- warn (like duplicate index)
      hl.DiagnosticVirtualTextWarn = {
        fg = c.yellow,
        bg = "NONE",
      }
      -- error (like syntax error)
      hl.DiagnosticVirtualTextError = {
        fg = c.nord_red,
        bg = "NONE",
      }
      -- info (like lazy update info)
      hl.DiagnosticVirtualTextInfo = {
        fg = c.nord_green,
        bg = "NONE",
      }

      -- Cmdline
      hl.NoiceCmdlinePopupBorder = {
        fg = c.nord_yellow,
      }
      hl.NoiceCmdlinePopupTitle = {
        fg = c.nord_yellow,
      }
      hl.NoiceCmdlineIcon = {
        fg = c.nord_white,
      }
      hl.NoiceCmdlineLua = {
        fg = c.nord_white,
      }
      hl.NoiceCmdlineIconSearch = {
        fg = c.nord_white,
      }

      -- orginal input text and func args (not plugin command or config)?
      -- can't find the config for the latter groups
      -- seems to be affected by treesitter
      hl.NoiceCmdlinePopup = {
        fg = c.nord_pink,
        -- bg = util.darken(c.nord_grey, 0.2),
      }

      -- Popupmenu
      hl.NoicePopupmenuBorder = {
        fg = c.nord_yellow,
        bg = c.none,
      }
      -- hl.MyPopupMenuBorder = {
      --   fg = c.nord_yellow,
      --   bg = c.none,
      -- }
      hl.NoicePopupmenu = {
        fg = c.nord_teal,
      }
      -- hl.MyPopupMenuText = {
      --   fg = c.nord_green,
      --   bg = c.none,
      -- }
      hl.NoicePopupmenuSelected = {
        fg = "NONE",
        bg = c.nord_red,
      }
      hl.NoicePopupmenuMatch = {
        fg = c.nord_pink,
      }

      -- consistent with normal vars
      hl.DiagnosticUnnecessary = {
        fg = c.warning,
        -- bg = c.nord_red
        bg = "NONE",
      }

      hl.AlphaHeader = {
        -- fg = c.nord_pink,
        fg = c.white,
      }

      hl.Comment = { fg = c.nord_teal }

      -- relative line number
      hl.LineNr = {
        fg = c.white,
      }
      -- current line number
      hl.CursorLineNr = {
        fg = c.nord_yellow,
      }

      -- other indent line
      hl.IblIndent = { fg = c.nord_teal, nocombine = false }
      -- current indent line
      hl.MiniIndentscopeSymbol = { fg = c.nord_yellow, nocombine = true }
    end,
  },

  --plan to blend with onedark
  --[[ "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "dark",
      transparent = true,
      term_colors = true,
      colors = {},
      hightlights = {},
    })
    -- require("onedark").load()
  end, ]]

  --[[ "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      transparent = false,
    })
  end, ]]
}
