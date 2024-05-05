return {
  "neovim/nvim-lspconfig",
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {
        typeCheckingMode = "basic",
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            rustfmt = {
              extraArgs = { "--max-width", "140" },
            },
            --hints = {
            --  enable = false,
            -- },
            inlayHints = {
              --allFeatures = false,
              parameterHints = {
                enable = false,
              },
              chainingHints = {
                enable = false,
              },
              typeHints = {
                enable = false,
              },
            },
          },
        },
      },
    },
    setup = {
      rust_analyzer = function(_, opts)
        local rust_tools_opts = require("lazyvim.util").opts("rust-tools.nvim")
        require("rust-tools").setup(vim.tbl_deep_extend("force", rust_tools_opts or {}, { server = opts }))
        return true
      end,
    },
  },
}
