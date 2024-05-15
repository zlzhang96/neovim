-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- display line number in Telescope Previewe
vim.cmd("autocmd User TelescopePreviewerLoaded setlocal number")
-- disable hlsearch in Telescope Previewe
vim.cmd("autocmd User TelescopePreviewerLoaded setlocal nohlsearch")

-- disable auto commenting new lines
vim.api.nvim_create_autocmd("BufEnter", {
  pattern = "",
  command = "set fo-=c fo-=r fo-=o",
})
