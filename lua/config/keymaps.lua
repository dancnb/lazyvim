-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprev<CR>")
vim.keymap.set("n", "<M-h>", "<cmd>colder<CR>")
vim.keymap.set("n", "<M-l>", "<cmd>cnewer<CR>")

vim.keymap.set("n", "<leader>p", function()
  require("fzf-lua").oldfiles({
    cwd_only = true,
    stat_file = true, -- verify files exist on disk
  })
end, { desc = "Recent files" })
