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
      tsserver = {
        settings = {
          typescript = {
            -- inlayHints = {
            --   functionLikeReturnTypes = false,
            --   parameterNames = "none",
            -- },
          },
          javascript = {
            -- inlayHints = {
            --   parameterNames = "none",
            -- },
          },
        },
      },
      elixirls = {
        settings = {
          elixirLS = {
            dialyzerEnabled = true,
          },
        },
      },
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            rustfmt = {
              extraArgs = { "--max-width", "140", "--chain-width", "100" },
            },
            hints = {
              enable = false,
            },
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
  },
}
