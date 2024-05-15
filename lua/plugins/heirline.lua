return {
  "rebelot/heirline.nvim",
  config = function()
    -- local utils = require("heirline.utils")
    -- local colors = {
    --   -- fg = utils.get_highlights()
    -- }

    local bo = vim.bo
    local util = {}
    util.icons = {
      powerline = {
        -- 
        vertical_bar_thin = "│",
        vertical_bar = "┃",
        block = "█",
        ----------------------------------------------
        left = "",
        left_filled = "",
        right = "",
        right_filled = "",
        ----------------------------------------------
        slant_left = "",
        slant_left_thin = "",
        slant_right = "",
        slant_right_thin = "",
        ----------------------------------------------
        slant_left_2 = "",
        slant_left_2_thin = "",
        slant_right_2 = "",
        slant_right_2_thin = "",
        ----------------------------------------------
        left_rounded = "",
        left_rounded_thin = "",
        right_rounded = "",
        right_rounded_thin = "",
        ----------------------------------------------
        trapezoid_left = "",
        trapezoid_right = "",
        ----------------------------------------------
        line_number = "",
        column_number = "",
      },
      padlock = "",
      circle_small = "●", -- ●
      circle = "", -- 
      circle_plus = "", -- 
      dot_circle_o = "", -- 
      circle_o = "⭘", -- ⭘
    }

    util.mode = setmetatable({
      n = "normal",
      no = "op",
      nov = "op",
      noV = "op",
      ["no"] = "op",
      niI = "normal",
      niR = "normal",
      niV = "normal",
      nt = "normal",
      v = "visual",
      V = "visual_lines",
      [""] = "visual_block",
      s = "select",
      S = "select",
      [""] = "block",
      i = "insert",
      ic = "insert",
      ix = "insert",
      R = "replace",
      Rc = "replace",
      Rv = "v_replace",
      Rx = "replace",
      c = "command",
      cv = "command",
      ce = "command",
      r = "enter",
      rm = "more",
      ["r?"] = "confirm",
      ["!"] = "shell",
      t = "terminal",
      ["null"] = "none",
    }, {
      __call = function(self, raw_mode)
        return self[raw_mode]
      end,
    })

    util.mode_lable = {
      normal = "NORMAL",
      op = "OP",
      visual = "VISUAL",
      visual_lines = "VISUAL LINES",
      visual_block = "VISUAL BLOCK",
      select = "SELECT",
      block = "BLOCK",
      insert = "INSERT",
      replace = "REPLACE",
      v_replace = "V-REPLACE",
      command = "COMMAND",
      enter = "ENTER",
      more = "MORE",
      confirm = "CONFIRM",
      shell = "SHELL",
      terminal = "TERMINAL",
      none = "NONE",
    }

    local icons = util.icons
    local mode = util.mode
    local Align, Space, Null, ReadOnly
    do
      Null = { provider = "" }

      Align = { provider = "%=" }

      Space = setmetatable({ provider = " " }, {
        __call = function(_, n)
          return { provider = string.rep(" ", n) }
        end,
      })

      ReadOnly = {
        condition = function()
          return not bo.modifiable or bo.readonly
        end,
        provider = icons.padlock,
        -- hl = hl.ReadOnly,
      }
    end
    local colors = require("tokyonight.colors").setup()

    local Indicator
    do
      local VimMode
      do
        local NormalModeIndicator = {
          -- Space,
          {
            fallthrough = false,
            -- ReadOnly,
            {
              provider = icons.circle,
              -- hl = function()
              --   if bo.modified then
              --     -- return { fg = hl.Mode.insert.bg }
              --     return { fg = colors.blue2 }
              --   else
              --     return hl.Mode.normal
              --   end
              -- end,
            },
          },
          Space,
        }
        local ActiveModeIndicator = {
          condition = function(self)
            return self.mode ~= "normal"
          end,
          -- hl = { bg = hl.StatusLine.bg },
          -- heirline.surround({ icons.powerline.left_rounded, icons.powerline.right_rounded }, function(self) -- color
          --   return hl.Mode[self.mode].bg
          -- end,
          {
            {
              fallthrough = false,
              ReadOnly,
              { provider = icons.circle },
            },
            Space,
            {
              provider = function(self)
                return util.mode_lable[self.mode]
              end,
            },
            -- hl = function(self)
            --   return hl.Mode[self.mode]
            -- end,
          },
        }

        VimMode = {
          init = function(self)
            self.mode = mode[vim.fn.mode(1)] -- :h mode()
          end,
          condition = function()
            return bo.buftype == ""
          end,
          {
            fallthrough = false,
            ActiveModeIndicator,
            NormalModeIndicator,
          },
        }
      end
      Indicator = {
        fallthrough = false,
        VimMode,
      }
    end

    local statusline = {
      Indicator,
    }
    local ViMode = {
      -- get vim current mode, this information will be required by the provider
      -- and the highlight functions, so we compute it only once per component
      -- evaluation and store it as a component attribute
      init = function(self)
        self.mode = vim.fn.mode(1) -- :h mode()
      end,
      -- Now we define some dictionaries to map the output of mode() to the
      -- corresponding string and color. We can put these into `static` to compute
      -- them at initialisation time.
      static = {
        mode_names = { -- change the strings if you like it vvvvverbose!
          n = "N",
          no = "N?",
          nov = "N?",
          noV = "N?",
          ["no\22"] = "N?",
          niI = "Ni",
          niR = "Nr",
          niV = "Nv",
          nt = "Nt",
          v = "V",
          vs = "Vs",
          V = "V_",
          Vs = "Vs",
          ["\22"] = "^V",
          ["\22s"] = "^V",
          s = "S",
          S = "S_",
          ["\19"] = "^S",
          i = "I",
          ic = "Ic",
          ix = "Ix",
          R = "R",
          Rc = "Rc",
          Rx = "Rx",
          Rv = "Rv",
          Rvc = "Rv",
          Rvx = "Rv",
          c = "C",
          cv = "Ex",
          r = "...",
          rm = "M",
          ["r?"] = "?",
          ["!"] = "!",
          t = "T",
        },
        mode_colors = {
          n = "red",
          i = "green",
          v = "cyan",
          V = "cyan",
          ["\22"] = "cyan",
          c = "orange",
          s = "purple",
          S = "purple",
          ["\19"] = "purple",
          R = "orange",
          r = "orange",
          ["!"] = "red",
          t = "red",
        },
      },
      -- We can now access the value of mode() that, by now, would have been
      -- computed by `init()` and use it to index our strings dictionary.
      -- note how `static` fields become just regular attributes once the
      -- component is instantiated.
      -- To be extra meticulous, we can also add some vim statusline syntax to
      -- control the padding and make sure our string is always at least 2
      -- characters long. Plus a nice Icon.
      provider = function(self)
        return " %2(" .. self.mode_names[self.mode] .. "%)"
      end,
      -- Same goes for the highlight. Now the foreground will change according to the current mode.
      hl = function(self)
        local mode = self.mode:sub(1, 1) -- get only the first mode character
        return { fg = self.mode_colors[mode], bold = true }
      end,
      -- Re-evaluate the component only on ModeChanged event!
      -- Also allows the statusline to be re-evaluated when entering operator-pending mode
      update = {
        "ModeChanged",
        pattern = "*:*",
        callback = vim.schedule_wrap(function()
          vim.cmd("redrawstatus")
        end),
      },
    }

    -- statusline = {
    --   ViMode,
    -- }

    require("heirline").setup({
      statusline = statusline,
      opts = {
        colors = colors,
        -- ViMode = ViMode,
      },
    })
  end,
}

-- return {
--   "nvim-lualine/lualine.nvim",
--   enabled = false,
-- }
