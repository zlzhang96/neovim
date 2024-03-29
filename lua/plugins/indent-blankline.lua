return {
  "lukas-reineke/indent-blankline.nvim",
  config = function()
    require("ibl").setup({
      -- other indent line
      indent = {
        -- char = "╎"
        char = "┊",
        tab_char = "┊",
      },
      scope = {
        enabled = false,
      },
    })
  end,
}
