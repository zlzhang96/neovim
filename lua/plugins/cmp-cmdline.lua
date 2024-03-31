return {
  "hrsh7th/cmp-cmdline",
  event = "VeryLazy",
  config = function()
    local cmp = require("cmp")
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      -- different window style in cmdline
      window = {
        completion = {
          border = "rounded",
          -- winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:CmpSelected,Search:NONE",
        },
      },
      formatting = {
        fields = { "abbr" },
        format = function(_, item)
          item.kind = ""
          return item
        end,
      },
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })

    cmp.setup.cmdline({ "/", "?" }, {
      mapping = cmp.mapping.preset.cmdline(),
      window = {
        completion = {
          border = "rounded",
          -- winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:CmpSelected,Search:NONE",
        },
      },
      formatting = {
        fields = { "abbr" },
        format = function(_, item)
          item.kind = ""
          return item
        end,
      },
      sources = {
        { name = "buffer" },
      },
    })
  end,
}
