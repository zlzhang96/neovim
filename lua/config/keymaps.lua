-- recommend to check (telescope)keymaps
local mode_n = { "n" }
local mode_v = { "v" }
local mode_i = { "i" }
-- Terminal mode
local mode_t = { "t" }
local mode_nv = { "n", "v" }
local mode_iv = { "i", "v" }
local opt_n = { noremap = true }
local opt_ns = { noremap = true, silent = true }
local opt_nb = { noremap = true, buffer = true }
local opt_nbs = { noremap = true, buffer = true, silent = true }
local opt_nse = { noremap = true, silent = true, expr = true }

local mappings = {
  -- Basic
  { from = "jh", to = "<ESC>", mode = mode_iv, opt = opt_ns },
  { from = "<C-c>", to = "<ESC>", mode = mode_i, opt = opt_ns },
  { from = "W", to = "<CMD>w<CR> <CMD>echo 'Changes Saved!'<CR>", mode = mode_n, opt = opt_n },
  { from = "Q", to = "<CMD>q<CR>", mode = mode_n, opt = opt_ns },
  { from = "<leader>wq", to = "<CMD>wq<CR>", mode = mode_n, opt = opt_ns, desc = "Save and Quit" },
  { from = "<leader><CR>", to = "<CMD>noh<CR>", mode = mode_n, opt = opt_ns, desc = "Clear hlsearch" },
  { from = "<ESC>", to = "<CMD>noh<CR>", mode = mode_n, opt = opt_ns },

  -- Move
  { from = "j", to = "v:count == 0 ? 'gj' : 'j'", mode = mode_nv, opt = opt_nse },
  { from = "<Down>", to = "v:count == 0 ? 'gj' : 'j'", mode = mode_nv, opt = opt_nse },
  { from = "k", to = "v:count == 0 ? 'gk' : 'k'", mode = mode_nv, opt = opt_nse },
  { from = "<Up>", to = "v:count == 0 ? 'gk' : 'k'", mode = mode_nv, opt = opt_nse },
  { from = "J", to = "G", mode = mode_nv, opt = opt_ns },
  { from = "H", to = "^", mode = mode_v, opt = opt_ns },
  { from = "L", to = "$", mode = mode_v, opt = opt_ns },
  -- Move Lines
  { from = "<A-j>", to = "<CMD>m .+1<CR>==", mode = mode_n, opt = opt_ns, desc = "Move down" },
  { from = "<A-k>", to = "<CMD>m .-2<CR>==", mode = mode_n, opt = opt_ns, desc = "Move up" },
  { from = "<A-j>", to = ":m '>+1<CR>gv=gv", mode = mode_v, opt = opt_ns, desc = "Move down " },
  { from = "<A-k>", to = ":m '<-2<CR>gv=gv", mode = mode_v, opt = opt_ns, desc = "Move up " },

  -- Windows
  { from = "sv", to = "<CMD>vsp<CR>", mode = mode_n, opt = opt_ns },
  { from = "sh", to = "<CMD>sp<CR>", mode = mode_n, opt = opt_ns },
  { from = "sx", to = "<C-w>c", mode = mode_n, opt = opt_ns },
  { from = "so", to = "<C-w>o", mode = mode_n, opt = opt_ns },
  { from = "<C-h>", to = "<C-w>h", mode = mode_n, opt = opt_ns, desc = "Go to left window" },
  { from = "<C-j>", to = "<C-w>j", mode = mode_n, opt = opt_ns, desc = "Go to lower window" },
  { from = "<C-k>", to = "<C-w>k", mode = mode_n, opt = opt_ns, desc = "Go to upper window" },
  { from = "<C-l>", to = "<C-w>l", mode = mode_n, opt = opt_ns, desc = "Go to right window" },
  -- Resize Window
  { from = "<C-Up>", to = "<CMD>resize +2<CR>", mode = mode_n, opt = opt_ns, desc = "Increase window height" },
  { from = "<C-Down>", to = "<CMD>resize -2<CR>", mode = mode_n, opt = opt_ns, desc = "Decrease window height" },
  {
    from = "<C-Left>",
    to = "<CMD>vertical resize -2<CR>",
    mode = mode_n,
    opt = opt_ns,
    desc = "Decrease window width",
  },
  {
    from = "<C-Right>",
    to = "<CMD>vertical resize +2<CR>",
    mode = mode_n,
    opt = opt_ns,
    desc = "Increase window width",
  },

  -- Buffers
  { from = "<S-h>", to = "<CMD>bprevious<CR>", mode = mode_n, opt = opt_ns, desc = "Previous buffer" },
  { from = "<S-l>", to = "<CMD>bnext<CR>", mode = mode_n, opt = opt_ns, desc = "Next buffer" },
  { from = "<leader>bb", to = "<CMD>e #<CR>", mode = mode_n, opt = opt_ns, desc = "Last buffer" },

  -- Terminal
  { from = "<ESC>", to = "<C-\\><C-N>", mode = mode_t, opt = opt_ns, desc = "Return terminal-normal mode " },
  { from = "jh", to = "<C-\\><C-N>", mode = mode_t, opt = opt_ns },
  { from = "<leader>bd", to = "<C-\\><C-N><C-O>", mode = mode_t, opt = opt_ns, desc = "Close terminal buffer" },
  -- Floaterm
  { from = "<leader>fn", to = "<CMD>FloatermNew<CR>", mode = mode_n, opt = opt_ns, desc = "Open float terminal" },
  {
    from = "<leader>fn",
    to = "<C-\\><C-n><CMD>FloatermNew<CR>",
    mode = mode_t,
    opt = opt_ns,
    desc = "Open float terminal",
  },
  { from = "<leader>ft", to = "<CMD>FloatermToggle<CR>", mode = mode_n, opt = opt_ns, desc = "Toggle float terminal" },
  {
    from = "<leader>ft",
    to = "<C-\\><C-n><CMD>FloatermToggle<CR>",
    mode = mode_t,
    opt = opt_ns,
    desc = "Toggle float terminal",
  },
  { from = "<leader>fx", to = "<CMD>FloatermKill<CR>", mode = mode_n, opt = opt_ns, desc = "Kill float terminal" },
  {
    from = "<leader>fx",
    to = "<C-\\><C-n><CMD>FloatermKill<CR>",
    mode = mode_t,
    opt = opt_ns,
    desc = "Kill float terminal",
  },
  { from = "<leader>fj", to = "<CMD>FloatermPrev<CR>", mode = mode_n, opt = opt_nb, desc = "Previous float terminal" },
  {
    from = "<leader>fj",
    to = "<C-\\><C-n><CMD>FloatermPrev<CR>",
    mode = mode_t,
    opt = opt_ns,
    desc = "Previous float terminal",
  },
  { from = "<leader>fk", to = "<CMD>FloatermNext<CR>", mode = mode_n, opt = opt_ns, desc = "Next float terminal" },
  {
    from = "<leader>fk",
    to = "<C-\\><C-n><CMD>FloatermNext<CR>",
    mode = mode_t,
    opt = opt_ns,
    desc = "Next float terminal",
  },
  { from = "<leader>fg", to = "<CMD>FloatermNew lazygit <CR>", mode = mode_n, opt = opt_ns, desc = "Open lazygit" },

  -- Other
  -- equal to <leader>sg
  { from = "<leader>fs", to = "<CMD>Telescope live_grep<CR>", mode = mode_nv, opt = opt_ns, desc = "Find text" },
}

local function bindkeymaps()
  for _, mapping in ipairs(mappings) do
    if mapping.desc then
      mapping.opt.desc = mapping.desc
    end
    vim.keymap.set(mapping.mode, mapping.from, mapping.to, mapping.opt)
  end
end

bindkeymaps()
