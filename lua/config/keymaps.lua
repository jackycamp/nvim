-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, "<A-Right>", "<S-e>", { silent = true })
vim.keymap.set({ "n", "v" }, "<A-Left>", "<S-b>", { silent = true })
vim.keymap.set({ "n", "v" }, "<D-Right>", "$", { silent = true })
vim.keymap.set({ "n", "v" }, "<D-Left>", "0", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>l", "<C-w>l", { silent = true })
vim.keymap.set({ "n", "v" }, "<leader>h", "<C-w>h", { silent = true })
vim.keymap.set({ "n" }, "<C-l>", "<cmd>Lazy<cr>", { desc = "lazy" })
-- vim.keymap.set({ "n", "v", "i" }, "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set({ "v", "i" }, "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set(
  "n",
  "<leader>fc",
  [[<cmd>lua require('telescope.builtin').find_files({cwd="~/code"})<CR>]],
  { noremap = true }
)
vim.keymap.set(
  "n",
  "<leader>fp",
  [[<cmd>lua require('telescope.builtin').find_files({cwd="~/personal"})<CR>]],
  { noremap = true }
)
vim.keymap.set(
  "n",
  "<leader>fd",
  [[<cmd>lua require('telescope.builtin').find_files({cwd="~/data"})<CR>]],
  { noremap = true }
)
vim.keymap.set(
  "n",
  "<leader>fdw",
  [[<cmd>lua require('telescope.builtin').find_files({cwd="~/Downloads"})<CR>]],
  { noremap = true }
)
