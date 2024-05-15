return {
  "lukas-reineke/indent-blankline.nvim",
  event = "VeryLazy",
  opts = {
    -- other indent line
    indent = {
      -- char = "╎"
      char = "┊",
      tab_char = "┊",
    },
    scope = {
      enabled = false,
    },
  },
  config = function(_, opts)
    local hooks = require("ibl.hooks")
    require("ibl").setup(opts)

    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
    hooks.register(hooks.type.VIRTUAL_TEXT, function(_, _, _, virt_text)
      if virt_text[1] and virt_text[1] == opts.indent.char then
        virt_text[1] = { " ", { "@ibl.whitespace.char.1" } }
      end
      return virt_text
    end)
  end,
}
