-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- explicitly setting swift comment string, otherwise just get commentstring is empty blah blah
vim.api.nvim_create_autocmd("FileType", {
  pattern = "swift",
  callback = function()
    vim.bo.commentstring = "// %s" -- Single-line comments
  end,
})
