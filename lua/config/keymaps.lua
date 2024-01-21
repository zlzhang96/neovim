-- please check (telescope)keymaps first
local mode_n = { "n" }
local mode_v = { "v" }
local mode_i = { "i" }
-- Terminal mode
local mode_t = { "t" }
local mode_nv = { "n", "v" }
local opt_n = { noremap = true }
local opt_ns = { noremap = true, silent = true }
local opt_nb = { noremap = true, buffer = true }
local opt_nbs = { noremap = true, buffer = true, silent = true }

local mappings = {
  -- equal to <leader>sg
  { from = "<leader>fs", to = "<CMD>Telescope live_grep<CR>", mode = mode_nv, opt = opt_ns, desc = "Find tl t" },
  --  close terminal windows
  { from = "<leader>bd", to = "<C-\\><C-N><C-O>", mode = mode_t, opt = opt_nbs },
  { from = "W", to = "<CMD>w<CR> <CMD>echo 'Changes Saved!'<CR>", mode = mode_n, opt = opt_n },
  { from = "Q", to = "<CMD>q<CR>", mode = mode_n, opt = opt_ns },
  { from = "<leader>wq", to = "<CMD>wq<CR>", mode = mode_n, opt = opt_ns, desc = "Save and Quit" },
  -- equal to <ESC>
  { from = "<leader><CR>", to = "<CMD>noh<CR>", mode = mode_n, opt = opt_ns, desc = "Clear hlsearch" },
  { from = "jh", to = "<ESC>", mode = mode_i, opt = opt_ns },
  { from = "<C-c>", to = "<ESC>", mode = mode_i, opt = opt_ns },
  { from = "J", to = "G", mode = mode_nv, opt = opt_ns },
  { from = "H", to = "^", mode = mode_v, opt = opt_ns },
  { from = "L", to = "$", mode = mode_v, opt = opt_ns },
  { from = "sv", to = "<CMD>vsp<CR>", mode = mode_n, opt = opt_ns },
  { from = "sh", to = "<CMD>sp<CR>", mode = mode_n, opt = opt_ns },
  { from = "sx", to = "<C-w>c", mode = mode_n, opt = opt_ns },
}

local function bindkeymaps()
  for _, mapping in ipairs(mappings) do
    if mapping.desc ~= "" then
      mapping.opt.desc = mapping.desc
    end
    vim.keymap.set(mapping.mode or "n", mapping.from, mapping.to, mapping.opt)
  end
end

bindkeymaps()
