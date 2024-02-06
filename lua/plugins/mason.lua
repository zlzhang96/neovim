return {
  "williamboman/mason.nvim",
  event = "VeryLazy",

  config = function()
    local list = {
      "clang-format",
      "google-java-format",
      "shfmt",
      "stylua",

      -- "gofumpt",
      -- "goimports",
      -- "prettierd", -- prettier for jsx, angular, flow, vue, typescript, css, less, scss, html, json, markdown, yaml
      -- "markdownlint",
      -- "efm", -- general language server
    }

    local mason = require("mason")
    local mason_registry = require("mason-registry")

    mason.setup()

    local ensure_installed = function()
      for _, name in pairs(list) do
        if not mason_registry.is_installed(name) then
          local package = mason_registry.get_package(name)
          package:install()
        end
      end
    end

    mason_registry.refresh(vim.schedule_wrap(ensure_installed))
    --   mason_registry.refresh(function()
    --     mason_registry.get_all_packages()
    --   end)
    -- end,
    --
  end,
}
