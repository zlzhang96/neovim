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
      c.nord_snow = "#D8DEE9"

      c.onedark_blue = "#61AFEF"
      c.onedark_white = "#ABB2BF"
      c.onedark_cyan = "#56B6C2"

      c.kanagawa_white = "#9BABCA"
      c.kanagawa_pink = "#B8B4D0"
      c.kanagawa_green = "#7AA79F"
      c.kanagawa_yellow = "#DCD7BA"
    end,
    -- customize color
    on_highlights = function(hl, c)
      local util = require("tokyonight.util")

      hl.test = {
        fg = c.nord_red,
      }
      -- TODO: remainging parts to be adjusted
      --
      -- hl.BufferLineCloseButton = hl.test
      -- hl.Conceal = hl.test

      hl.Constant = {
        fg = c.nord_orange,
      }

      -- lsp
      hl["@keyword"] = {
        fg = c.nord_pink,
        italic = true,
      }
      hl["@keyword.function"] = {
        fg = c.onedark_blue,
      }
      hl["@type.builtin"] = {
        fg = c.kanagawa_green,
      }
      hl["@variable"] = {
        fg = c.nord_snow,
        -- fg = "#babfdc",
      }
      hl["@variable.parameter"] = hl["@variable"]
      hl["@variable.member"] = {
        -- fg = "#e6c384",
        fg = "#dcd7ba",
      }
      hl["@property"] = hl["@variable.member"]
      hl["@punctuation.bracket"] = {
        fg = c.kanagawa_white,
      }
      hl["@constructor"] = hl["@punctuation.bracket"]

      -- WhichKey
      hl.WhichKey = {
        fg = c.nord_green,
      }
      hl.WhichKeySeparator = {
        fg = c.nord_yellow,
      }
      hl.WhichKeyDesc = {
        fg = c.nord_snow,
      }
      hl.WhichKeyGroup = {
        fg = c.nord_pink,
      }

      hl.IlluminatedWordRead = {
        bg = "NONE",
        underline = true,
      }

      -- GitSigns
      hl.GitSignsAdd = {
        fg = c.nord_green,
      }
      hl.GitSignsChange = {
        -- fg = c.onedark_blue,
        fg = c.nord_yellow,
      }
      hl.GitSignsDelete = {
        fg = c.nord_red,
      }

      -- NeoTree
      hl.NeoTreeNormal = {
        fg = c.nord_snow,
      }
      hl.NeoTreeFileName = hl.NeoTreeNormal
      hl.NeoTreeDirectoryName = {
        fg = c.nord_teal,
      }
      hl.NeoTreeRootName = {
        fg = c.onedark_blue,
      }
      hl.NeoTreeGitAdded = {
        fg = c.nord_green,
      }
      hl.NeoTreeGitModified = {
        fg = c.nord_yellow,
      }
      hl.NeoTreeGitUntracked = {
        fg = c.nord_orange,
        italic = true,
      }
      hl.NeoTreeTitleBar = {
        fg = c.nord_snow,
        bg = c.nord_orange,
      }

      -- Flash
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

      -- float border (like in Lazy)
      hl.FloatBorder = {
        fg = c.nord_yellow,
      }
      hl.TelescopeBorder = {
        fg = c.nord_yellow,
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
      -- TODO:orginal input text and func args (not plugin command or config)
      -- can't locate the hightlights for the latter groups (config is @keyword)
      hl.NoiceCmdlinePopup = {
        fg = c.nord_pink,
      }

      -- Popupmenu
      hl.NoicePopupmenuBorder = {
        fg = c.nord_yellow,
        bg = c.none,
      }
      --[[ hl.MyPopupMenuBorder = {
        fg = c.nord_yellow,
        bg = c.none,
      } ]]
      hl.NoicePopupmenu = {
        fg = c.nord_teal,
      }
      --[[ hl.MyPopupMenuText = {
        fg = c.nord_green,
        bg = c.none,
      } ]]
      hl.NoicePopupmenuSelected = {
        fg = "NONE",
        bg = c.nord_red,
      }
      hl.NoicePopupmenuMatch = {
        fg = c.nord_pink,
      }

      hl.DiagnosticUnnecessary = hl["@variable"] -- consistent with normal vars

      hl.Comment = {
        fg = c.nord_teal,
        italic = true,
      }
      -- current cursor line
      hl.CursorLine = {
        bg = c.nord_grey,
      }
      -- relative line number
      hl.LineNr = {
        fg = c.white,
      }
      -- current line number
      hl.CursorLineNr = {
        fg = c.nord_yellow,
      }
      -- other indent line
      hl.IblIndent = {
        fg = c.nord_teal,
        nocombine = false,
      }
      -- current indent line
      hl.MiniIndentscopeSymbol = {
        fg = c.nord_snow,
        -- fg = c.kanagawa_pink,
        nocombine = true,
      }
      hl.AlphaHeader = {
        fg = c.white,
      }
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

  -- "rebelot/kanagawa.nvim",
  -- config = function()
  --   require("kanagawa").setup({
  --     transparent = false,
  --   })
  -- end,
}
