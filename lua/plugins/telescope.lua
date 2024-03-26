return {
  "nvim-telescope/telescope.nvim",
  config = function()
    local actions = require("telescope.actions")
    require("telescope").setup({
      defaults = {
        -- enable the preview for short column terminal
        layout_config = {
          horizontal = {
            width = 0.8,
            preview_cutoff = 50,
            preview_width = 0.5,
            result_width = 0.3,
          },
        },
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            -- ["<C-u>"] = false,
          },
        },
      },
      pickers = {
        find_files = {
          mappings = {
            i = {
              -- enable searching files in parent dir
              ["<C-up>"] = function(prompt_bufnr)
                local current_picker = require("telescope.actions.state").get_current_picker(prompt_bufnr)
                -- cwd is only set if passed as telescope option
                -- for example :Telescope find_files cwd=..
                local cwd = current_picker.cwd and tostring(current_picker.cwd) or vim.loop.cwd()
                local parent_dir = vim.fs.dirname(cwd)

                actions.close(prompt_bufnr)
                require("telescope.builtin").find_files({
                  -- prompt_title = vim.fs.basename(parent_dir),
                  cwd = parent_dir,
                })
              end,
            },
          },
        },
        buffers = {
          mappings = {
            i = {
              -- It seems to only effect on buffer search
              ["<C-d>"] = actions.delete_buffer + actions.move_to_top,
            },
          },
        },
      },
    })
  end,
}
