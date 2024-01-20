local mode_n = { "n" }
local mode_v = { "v" }
local mode_i = { "i" }
local mode_nv = { "n", "v" }
local opt_n = { noremap = true }
local opt_ns = { noremap = true, silent = true }
local opt_nb = { noremap = true, buffer = true }
local opt_nbs = { noremap = true, buffer = true, silent = true }

-- 本地变量
local map = vim.api.nvim_set_keymap

-- visual模式下缩进代码
map("v", "<", "<gv", opt_ns)
map("v", ">", ">gv", opt_ns)

map("n", "W", ':w!<CR> :echo " Changes Saved!"<CR>', opt_ns)
vim.keymap.set("n", "<leader>wq", ":wqa!<CR>", { desc = "Save and quit" })

-- quit insert mode
map("i", "jh", "<Esc>", opt_ns)
map("i", "<C-c>", "<Esc>", opt_ns)

map("n", "J", "G", opt_ns)
-- map("n", "H", "^", opt_ns)
-- map("n", "L", "$", opt_ns)
-- map("v", "J", "G", opt_ns)
map("v", "H", "^", opt_ns)
map("v", "L", "$", opt_ns)

-- 窗口分割
-- 取消 s 默认功能
map("n", "s", "", opt_ns)
-- windows 相关
map("n", "sv", ":vsp<CR>", opt_ns)
map("n", "sh", ":sp<CR>", opt_ns)
-- 关闭当前窗口
map("n", "sx", "<C-w>c", opt_ns)

map("n", "<S-l>", ":bnext<CR>", opt_ns)
map("n", "<S-h>", ":bprevious<CR>", opt_ns)

local command_keymappings = {
  -- ["FindFiles"] = "<C-p>",
  ["FindCommands"] = "<C-p>",
  -- ["FormatCode"] = "<leader>fm",
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
-- vim.keymap.set("n", "lhs", function()
--   print("real lua function")
-- end)

-- Map to multiple modes
-- vim.keymap.set({"n, v"}, "<leader>lr", vim.lsp.buf.references, { buffer = true })
