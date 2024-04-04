-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- display line number in Telescope Previewe
vim.cmd("autocmd User TelescopePreviewerLoaded setlocal number")
