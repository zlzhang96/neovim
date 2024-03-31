return {
  "hrsh7th/nvim-cmp",
  config = function()
    local cmp = require("cmp")
    local luasnip = require("luasnip")

    local has_words_before = function()
      unpack = unpack or table.unpack
      local line, col = unpack(vim.api.nvim_win_get_cursor(0))
      return col ~= 0 and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
    end

    cmp.setup({
      preselect = cmp.PreselectMode.NONE,
      snippet = {
        -- REQUIRED
        -- must specify a snippet engine
        expand = function(args)
          require("luasnip").lsp_expand(args.body)
        end,
      },
      -- experimental = {
      --   ghost_text = true,
      -- },
      sources = cmp.config.sources({
        { name = "luasnip" },
        { name = "nvim_lsp" },
        { name = "path" },
        { name = "buffer" },
      }),
      mapping = cmp.mapping.preset.insert({
        ["<Tab>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_next_item()
          elseif luasnip.expand_or_jumpable() then
            luasnip.expand_or_jump()
          elseif has_words_before() then
            cmp.complete()
          end
        end, { "i", "s" }),
        ["<S-Tab>"] = cmp.mapping(function()
          if cmp.visible() then
            cmp.select_prev_item()
          elseif luasnip.jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { "i", "s" }),
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
      }),
      window = {
        completion = {
          -- border = "rounded",
          border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
          winhighlight = "Normal:CmpNormal,FloatBorder:CmpBorder,CursorLine:CmpSelected,Search:NONE",
          -- winblend = 0.5,
        },
        documentation = {
          border = { "┌", "─", "┐", "│", "┘", "─", "└", "│" },
          winhighlight = "Normal:CmpDocNormal,FloatBorder:CmpBorder,CursorLine:CursorLine,Search:NONE",
        },
      },
      formatting = {
        -- fields = { "abbr", "menu", "kind" },
        fields = { "abbr", "kind" },

        format = function(entry, vim_item)
          -- original formatter schema
          --[[ local item = vim_item
            local icons = require("lazyvim.config").icons.kinds
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end ]]

          -- new formatter schema
          local item = require("lspkind").cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "...",
          })(entry, vim_item)
          -- local strings = vim.split(item.kind, "%s", { trimempty = true })
          -- item.kind = " " .. (strings[1] or "") .. " "
          -- kind.menu = " " .. (strings[2] or "")

          -- cancel the menu
          item.menu = ""

          return item
        end,
      },
    })
  end,
}
