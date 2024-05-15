return {
  "kevinhwang91/nvim-ufo",
  dependencies = "kevinhwang91/promise-async",
  -- event = "VimEnter",
  -- should merge with keymaps
  keys = {
    {
      "zm",
      function()
        require("ufo").closeAllFolds()
      end,
      desc = "󱃄 Close All Folds",
    },
    {
      "zr",
      function()
        require("ufo").openFoldsExceptKinds({ "comment", "imports" })
      end,
      desc = "󱃄 Open All Regular Folds",
    },
    {
      "zR",
      function()
        require("ufo").openFoldsExceptKinds({})
      end,
      desc = "󱃄 Open All Folds",
    },
    {
      "z1",
      function()
        require("ufo").closeFoldsWith(1)
      end,
      desc = "󱃄 Close L1 Folds",
    },
    {
      "z2",
      function()
        require("ufo").closeFoldsWith(2)
      end,
      desc = "󱃄 Close L2 Folds",
    },
    -- {
    -- "K",
    -- function()
    --   local winid = require("ufo").peekFoldedLinesUnderCursor()
    --   if not winid then
    --     -- choose one of coc.nvim and nvim lsp
    --     -- vim.fn.CocActionAsync('definitionHover') -- coc.nvim
    --     vim.lsp.buf.hover()
    --   end
    -- end,
    -- desc = "󱃄 test Folds",
    -- },
  },
  opts = {
    provider_selector = function(_, ft, _)
      -- INFO some filetypes only allow indent, some only LSP, some only
      -- treesitter. However, ufo only accepts two kinds as priority,
      -- therefore making this function necessary :/
      local lspWithOutFolding = { "markdown", "sh", "css", "html", "python" }
      if vim.tbl_contains(lspWithOutFolding, ft) then
        return { "treesitter", "indent" }
      end
      return { "lsp", "indent" }
    end,

    close_fold_kinds_for_ft = {
      default = { "imports", "comment" },
    },
  },
  config = function(_, opts)
    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities.textDocument.foldingRange = {
      dynamicRegistration = false,
      lineFoldingOnly = true,
    }
    local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
    for _, ls in ipairs(language_servers) do
      require("lspconfig")[ls].setup({
        capabilities = capabilities,
        -- you can add other fields for setting up lsp server in this table
      })
    end

    local handler = function(virtText, lnum, endLnum, width, truncate)
      local newVirtText = {}
      local suffix = (" 󰁂 %d "):format(endLnum - lnum)
      local sufWidth = vim.fn.strdisplaywidth(suffix)
      local targetWidth = width - sufWidth
      local curWidth = 0
      for _, chunk in ipairs(virtText) do
        local chunkText = chunk[1]
        local chunkWidth = vim.fn.strdisplaywidth(chunkText)
        if targetWidth > curWidth + chunkWidth then
          table.insert(newVirtText, chunk)
        else
          chunkText = truncate(chunkText, targetWidth - curWidth)
          local hlGroup = chunk[2]
          table.insert(newVirtText, { chunkText, hlGroup })
          chunkWidth = vim.fn.strdisplaywidth(chunkText)
          -- str width returned from truncate() may less than 2nd argument, need padding
          if curWidth + chunkWidth < targetWidth then
            suffix = suffix .. (" "):rep(targetWidth - curWidth - chunkWidth)
          end
          break
        end
        curWidth = curWidth + chunkWidth
      end
      table.insert(newVirtText, { suffix, "MoreMsg" })
      return newVirtText
    end

    require("ufo").setup({
      fold_virt_text_handler = handler,
      close_fold_kinds_for_ft = opts.close_fold_kinds_for_ft,
      provider_selector = opts.provider_selector,
    })
  end,
}
