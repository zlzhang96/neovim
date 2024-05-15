-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- 显式声明字符编码
vim.opt.encoding = "utf-8"

vim.opt.termguicolors = true

-- 打开文件时自动切换目录
vim.opt.autochdir = true
vim.opt.swapfile = false
-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 高亮当前所在行
vim.opt.cursorline = true
-- 长文本换行
vim.opt.wrap = true
-- 行号与相对行号
vim.opt.number = true
vim.opt.relativenumber = true
-- tab 转化为空格
vim.opt.expandtab = true
-- 缩进
vim.opt.smarttab = true
vim.opt.autoindent = true
vim.opt.smartindent = true
-- 大小写匹配
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.showtabline = 2
vim.opt.laststatus = 3

vim.opt.list = true
vim.opt.listchars = "tab:»»,space:·,trail:·,lead: ,eol:↲,extends:→,precedes:←,nbsp:+"
vim.opt.showbreak = "↪"

vim.opt.cmdheight = 1
vim.opt.scrolloff = 999

vim.opt.undofile = true

-- fold
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldmethod = "expr"
vim.opt.foldlevel = 99
vim.opt.foldlevelstart = 99
vim.opt.foldenable = true
vim.opt.foldcolumn = "2"

-- 定位上次退出所在行
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line
    if line("'\"") > 1 and line("'\"") <= line("$") then
      vim.cmd("normal! g'\"")
    end
  end,
})
