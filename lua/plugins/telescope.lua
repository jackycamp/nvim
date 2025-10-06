return {
  "telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-fzf-native.nvim",
      build = "make",
    },
    {
      "nvim-telescope/telescope-live-grep-args.nvim",
    },
  },
  keys = {
    -- Find
    { "<leader>fF", LazyVim.pick("files", { root = false }), desc = "Find Files (cwd)" },
    { "<leader>ff", LazyVim.pick("files"), desc = "Find Files (root)" },

    -- Search
    { "<leader>sG", LazyVim.pick("live_grep", { root = false }), desc = "Grep (cwd)" },
    { "<leader>sg", LazyVim.pick("live_grep"), desc = "Grep (root)" },
    -- {
    --   "<leader>sG",
    --   function()
    --     require("telescope").extensions.live_grep_args.live_grep_args()
    --   end,
    --   desc = "Grep with args (root)",
    -- },
  },

  config = function()
    require("telescope").load_extension("fzf")
    require("telescope").load_extension("live_grep_args")
    -- vim.keymap.set("n", "<leader>sg", function()
    --   require("telescope").extensions.live_grep_args.live_grep_args({
    --     cwd = vim.fn.getcwd(),
    --   })
    -- end, { desc = "Live grep with args" })
  end,
}
