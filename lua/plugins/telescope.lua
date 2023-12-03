return {
  -- enable the preview for short column terminal
  require("telescope").setup({
    defaults = {
      layout_config = {
        horizontal = {
          preview_cutoff = 0,
        },
      },
    },
  }),
}
