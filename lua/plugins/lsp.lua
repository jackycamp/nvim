return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- pyright will be automatically installed with mason and loaded with lspconfig
      pyright = {
        typeCheckingMode = "basic",
      },

      -- typescript/javascript
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

      -- elixir
      elixirls = {
        settings = {
          elixirLS = {
            dialyzerEnabled = true,
          },
        },
      },

      -- for rust
      rust_analyzer = {
        inlayHints = {
          enable = false,
        },
        settings = {
          inlayHints = {
            enable = false,
          },
          ["rust-analyzer"] = {
            rustfmt = {
              extraArgs = { "--max-width", "140", "--chain-width", "100" },
            },
            -- hints = {
            --   enable = false,
            -- },
            -- inlayHints = {
            --   enable = false,
            --   allFeatures = false,
            --   parameterHints = {
            --     enable = false,
            --   },
            --   chainingHints = {
            --     enable = false,
            --   },
            --   typeHints = {
            --     enable = false,
            --   },
            -- },
          },
        },
      },

      -- swift
      -- helpful reference: https://wojciechkulik.pl/ios/the-complete-guide-to-ios-macos-development-in-neovim
      sourcekit = {
        capabilities = vim.tbl_deep_extend("force", require("cmp_nvim_lsp").default_capabilities(), {
          textDocument = {
            inlayHint = {
              -- disable inlay hints (throws errors anyway)
              dynamicRegistration = false,
            },
          },
        }),
        on_attach = function(_, bufnr)
          local opts = { noremap = true, silent = true, buffer = bufnr }

          opts.desc = "Show line diagnostics"
          vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)

          opts.desc = "Show documentation for what is under cursor"
          vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
        end,
      },

      -- others here
    },
    setup = {
      rust_analyzer = function(_, opts)
        vim.lsp.inlay_hint.enable(false)
        return true
      end,
    },
  },
}
