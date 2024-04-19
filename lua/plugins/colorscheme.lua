return {
  "folke/tokyonight.nvim",
  opts = {
    -- in alacritty, close it
    -- transparent = true,
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
      c.kanagawa_commment = "#727169"
      c.kanagawa_red = "#D27E99"

      c.ala_term_bg = "#262933"
      c.some_green = "#7DAEA3"
      c.some_blue = "#8BABEB"
      c.some_red = "#AE7D88"
      c.some_grey = "#2E3440"
      c.some_dark_blue = "#2D4F67"

      c.bg = c.ala_term_bg
      c.border = c.nord_grey
    end,
    -- customize color
    on_highlights = function(hl, c)
      -- local util = require("tokyonight.util")

      -- TODO:
      -- remainging parts to be adjusted

      -- hl.BufferLineCloseButton = {
      --   fg = c.nord_red,
      --   bg = c.nord_green,
      -- }
      -- hl.BufferLineDevIconLua = hl.BufferLineCloseButton
      -- hl.LspInfoBorder = {
      --   fg = c.nord_yellow,
      -- }

      hl.TroubleCount.bg = "NONE"

      -- fuck it is vimdoc(in LazyVim)!!!
      hl.NormalSB = {
        fg = c.onedark_white,
      }

      -- fuck it is mark(in LazyVim)!!!
      hl.DiagnosticHint = {
        fg = c.nord_yellow,
        bold = true,
      }

      -- Cmp
      hl.CmpItemAbbr = {
        fg = c.nord_snow,
      }
      hl.CmpNormal = {
        -- fg = c.nord_yellow,
        bg = c.bg,
      }
      hl.CmpItemAbbrMatch = {
        fg = c.some_red,
      }
      hl.CmpItemAbbrMatchFuzzy = hl.CmpItemAbbrMatch
      hl.CmpDocNormal = {
        bg = c.bg,
      }
      hl.CmpSelected = {
        -- bg = c.nord_yellow,
        bg = c.nord_grey,
      }
      hl.CmpBorder = {
        fg = c.nord_yellow,
        bg = c.bg,
      }

      -- scroll bar in cmp and noice
      --[[ hl.NoiceScrollbarThumb = {
        bg = c.some_red,
      } ]]
      hl.PmenuThumb = {
        -- bg = c.nord_yellow,
        bg = c.some_dark_blue,
      }

      hl.Constant = {
        fg = c.nord_orange,
        -- bold = true,
      }

      -- Telescope
      hl.TelescopePromptCounter = {
        fg = c.nord_pink,
      }
      hl.TelescopePromptTitle = {
        fg = c.nord_yellow,
      }
      hl.TelescopeBorder = {
        fg = c.nord_yellow,
      }
      hl.TelescopePromptBorder = hl.TelescopeBorder
      hl.TeleScopeMatching = {
        fg = c.some_red,
      }
      hl.TeleScopeSelection = {
        bg = c.nord_grey,
        bold = true,
        underline = true,
      }

      -- relevant context above
      hl.TreesitterContext = {
        bg = c.nord_grey,
      }

      -- lsp
      hl["@keyword"] = {
        fg = c.nord_pink,
        italic = true,
      }
      hl["@keyword.function"] = {
        fg = c.onedark_blue,
      }
      hl.Statement.italic = true
      hl["@type.builtin"] = {
        fg = c.kanagawa_green,
      }
      hl["@variable"] = {
        fg = c.nord_snow,
      }
      hl["@variable.parameter"] = hl["@variable"]
      hl.DiagnosticUnnecessary = hl["@variable"] -- consistent with normal vars
      hl["@variable.member"] = {
        fg = c.kanagawa_yellow,
      }
      hl["@property"] = hl["@variable.member"]
      hl["@punctuation.bracket"] = {
        fg = c.kanagawa_white,
      }
      hl["@constructor"] = hl["@punctuation.bracket"]
      hl["@number"] = {
        fg = c.kanagawa_red,
      }

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
      -- Background
      hl.WhichKeyFloat = {
        bg = c.some_grey,
      }

      hl.IlluminatedWordRead = {
        -- bg = "NONE",
        bg = c.nord_grey,
        underline = true,
      }
      hl.IlluminatedWordText = hl.IlluminatedWordRead
      hl.IlluminatedWordWrite = hl.IlluminatedWordRead
      hl.illuminatedWord = hl.IlluminatedWordRead
      hl.illuminatedCurWord = hl.IlluminatedWordRead

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
      hl.GitSignsCurrentLineBlame = {
        fg = c.kanagawa_white,
        bg = c.nord_grey,
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

      -- hint (like unused vars)
      hl.DiagnosticVirtualTextHint = {
        fg = c.nord_pink,
        bg = "NONE",
      }
      -- warn (like duplicate index)
      hl.DiagnosticVirtualTextWarn = {
        fg = c.nord_yellow,
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
        fg = c.nord_yellow,
      }
      hl.NoiceCmdlineLua = {
        fg = c.nord_yellow,
      }
      hl.NoiceCmdlineIconSearch = {
        fg = c.nord_yellow,
      }

      -- TODO:
      -- plain text and func args (not plugin command or config-"@keyword")
      hl.NoiceCmdlinePopup = {
        fg = c.nord_pink,
      }
      hl.NoiceCmdline = {
        fg = c.nord_pink,
      }

      -- Popupmenu
      -- It is of no use for cmp-cmdline
      hl.NoicePopupmenuBorder = {
        fg = c.nord_yellow,
        bg = c.none,
      }
      --[[ hl.MyPopupMenuBorder = {
        fg = c.nord_yellow,
        bg = c.none,
      } ]]
      hl.NoicePopupmenu = {
        fg = c.nord_snow,
      }
      --[[ hl.MyPopupMenuText = {
        fg = c.nord_green,
        bg = c.none,
      } ]]
      hl.NoicePopupmenuSelected = {
        fg = "NONE",
        bg = c.nord_grey,
      }
      hl.NoicePopupmenuMatch = hl.CmpItemAbbrMatch

      hl.Comment = {
        -- fg = c.kanagawa_commment,
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
        -- fg = c.nord_orange,
        fg = c.onedark_blue,
        bold = true,
      }
      -- other indent line
      hl.IblIndent = {
        -- fg = c.nord_teal,
        nocombine = false,
      }
      -- current indent line
      hl.MiniIndentscopeSymbol = {
        fg = c.nord_snow,
        -- fg = c.kanagawa_pink,
        nocombine = true,
      }

      -- Alpha
      hl.AlphaHeader = {
        fg = c.white,
      }
      hl.AlphaButtons = {
        fg = c.kanagawa_yellow,
      }
      hl.AlphaShortcut = {
        fg = c.some_green,
      }

      -- FlyBuf
      hl.FlyBufBracket = {
        fg = c.nord_snow,
        italic = false,
      }
      hl.FlyBufBorder = hl.FloatBorder
      hl.FlyBufCount = {
        fg = c.some_green,
        italic = false,
      }
      hl.FlyBufShortCut = {
        fg = c.nord_pink,
      }
    end,
  },

  --[[ "navarasu/onedark.nvim",
  config = function()
    require("onedark").setup({
      style = "dark",
      transparent = true,
      term_colors = true,
      colors = {},
      hightlights = {},
    })
    require("onedark").load()
  end, ]]

  --[[ "rebelot/kanagawa.nvim",
  config = function()
    require("kanagawa").setup({
      transparent = false,
    })
  end, ]]

  -- "savq/melange-nvim",
}
