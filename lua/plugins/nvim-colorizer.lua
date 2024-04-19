return {
  "norcalli/nvim-colorizer.lua",
  event = "VeryLazy",
  config = function()
    -- Attaches to every FileType mode
    require("colorizer").setup({ "*" }, {
      -- user_default_options = {
      -- DEFAULT_OPTIONS = {
      RGB = false,
      RRGGBB = true,
      RRGGBBAA = true,
      mode = "background",
      -- },

      -- lua = {
      -- RGB = false,
      -- },
    })
  end,
}
