-- vim.keymap.set("n", "lhs", function()
--   print("real lua function")
-- end)

-- Map to multiple modes
-- vim.keymap.set({"n, v"}, "<leader>lr", vim.lsp.buf.references, { buffer = true })

-- leader key 为空
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = {
  noremap = true,
  silent = true,
}

-- 本地变量
local map = vim.api.nvim_set_keymap

-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)

map("n", "<leader>w", ':w!<CR> :echo " Changes Saved!"<CR>', opt)
map("n", "<leader>wq", ":wqa!<CR>", opt)

-- quit insert mode
map("i", "jh", "<Esc>", opt)
map("i", "<C-c>", "<Esc>", opt)

map("n", "J", "G", opt)
-- map("n", "H", "^", opt)
-- map("n", "L", "$", opt)
map("v", "J", "G", opt)
map("v", "H", "^", opt)
map("v", "L", "$", opt)

-- 窗口分割
-- 取消 s 默认功能
map("n", "s", "", opt)
map("n", "sv", ":vsp<CR>", opt)
map("n", "sh", ":sp<CR>", opt)
-- 关闭当前窗口
map("n", "sc", "<C-w>c", opt)

map("n", "<S-l>", ":bnext<CR>", opt)
map("n", "<S-h>", ":bprevious<CR>", opt)

local command_keymappings = {
  -- use <space><speace>
  -- ["FindFiles"] = "<C-p>",
  ["FindCommands"] = "<C-p>",
  ["FormatCode"] = "<leader>fm",
  ["FindInProject"] = { mode = "nv", keys = "<leader>fs" },
}

local function getKey(keybinding)
  if type(keybinding) == "string" then
    return keybinding
  else
    return keybinding.keys
  end
end

local function registerKeys()
  for command, keybinding in pairs(command_keymappings) do
    local key = getKey(keybinding)

    if not key then
      vim.print(command)
    end

    local modes = keybinding.mode or "n"
    for i = 1, #modes do
      local char = string.sub(modes, i, i)
      vim.keymap.set(char, key, "<CMD>" .. command .. "<CR>", {})
    end
  end
end
registerKeys()
