return {
  -- "hrsh7th/nvim-cmp",
  require("cmp").setup({
    window = {
      completion = {
        -- border = "rounded",
        border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:CmpSelected,Search:NONE",
      },
      documentation = {
        border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
        winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpBorder,CursorLine:CursorLine,Search:NONE",
      },
    },
    formatting = {
      -- fields = { "abbr", "menu", "kind" },
      fields = { "abbr", "kind" },

      format = function(_, item)
        -- set max width for abbr
        --[[ local fixed_width = 20
        local content = item.abbr
        if fixed_width then
          vim.o.pumwidth = fixed_width
        end
        local win_width = vim.api.nvim_win_get_width(0)
        local max_content_width = fixed_width and fixed_width - 10 or math.floor(win_width * 0.2)
        if #content > max_content_width then
          item.abbr = vim.fn.strcharpart(content, 0, max_content_width - 3) .. "..."
        else
          item.abbr = content .. (" "):rep(max_content_width - #content)
        end ]]

        -- cancel the menu
        item.menu = ""

        local icons = require("lazyvim.config").icons.kinds
        if icons[item.kind] then
          item.kind = icons[item.kind] .. item.kind
        end

        return item
      end,
    },
  }),
}
