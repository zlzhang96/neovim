return {
  "hrsh7th/cmp-cmdline",
  event = "VeryLazy",
  enabled = false,
  config = function()
    -- `:` cmdline setup.
    local cmp = require("cmp")
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
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
  end,
}
