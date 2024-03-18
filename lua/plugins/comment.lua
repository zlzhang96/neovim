return {
  -- Due to Codelens within nvim-lspconfig, keymaps may conflict.
  -- See more in ~/.local/share/nvim/lazy/LazyVim/lua/lazyvim/plugins/lsp/keymaps.lua
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup({
      padding = true,
      ignore = nil,
      sticky = true,
      toggler = {
        ---Line-comment toggle keymap
        line = "<leader>cc",
        ---Block-comment toggle keymap
        block = "<leader>cb",
      },
      ---LHS of operator-pending mappings in NORMAL and VISUAL mode
      opleader = {
        ---Line-comment keymap
        line = "<leader>cc",
        ---Block-comment keymap
        block = "<leader>cb",
      },
      ---LHS of extra mappings
      extra = {
        ---Add comment on the line above
        above = "<leader>co",
        ---Add comment on the line below
        below = "<leader>cO",
        ---Add comment at the end of line
        eol = "<leader>ce",
      },
      mappings = {
        basic = true,
        extra = true,
      },
      pre_hook = nil,
      post_hook = nil,
    })
  end,
}
