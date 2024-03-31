return {
  "zlzhang96/flybuf.nvim",
  event = "VeryLazy",
  config = function()
    require("flybuf").setup({
      hotkey = "asdfghlwertyuiozcvbnm", -- hotkey
      border = "single",
      quit = "q", -- quit flybuf
      mark = "p",
      delete = "x",
    })
  end,
}
