return {
  "folke/noice.nvim",
  config = function()
    require("noice").setup({
      lsp = {
        -- disable signature help when insert
        signature = {
          enabled = false,
          auto_open = {
            enabled = false,
          },
        },
      },

      presets = {
        -- show border in hovering lsp_text
        lsp_doc_border = true,
      },
      cmdline = {
        -- use bottom cmdline to cooperate with cmp-cmdline
        view = "cmdline",
        format = {
          cmdline = {
            -- config icon
            icon = ">",
          },
        },
      },
      views = {
        cmdline_popup = {
          position = {
            row = 4,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
            row = 7,
            col = "50%",
          },
          size = {
            width = 60,
            height = "auto",
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          win_options = {
            -- winhighlight = { Normal = "MyPopupMenuText", FloatBorder = "MyPopupMenuBorder" },
          },
        },
      },
    })
  end,
}
