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

vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<CR>", { desc = "Git Diff" })
vim.keymap.set("n", "<leader>gl", "<cmd>DiffviewFileHistory<CR>", { desc = "Git Log" })
vim.keymap.set("n", "<leader>gf", "<cmd>DiffviewFileHistory %<CR>", { desc = "Git File History" })
vim.keymap.set("v", "<leader>gb", "<cmd>'<,'>DiffviewFileHistory<CR>", { desc = "Git Selection History" })
-- vim.keymap.set(
--   "n",
--   "<leader>gB",
--   "<cmd>DiffviewOpen origin/HEAD...HEAD --imply-local<CR>",
--   { desc = "Review branch changes" }
-- )
vim.keymap.set("n", "<leader>gm", "<cmd>DiffviewOpen origin/main...HEAD --imply-local<cr>", { desc = "Git Diff main" })
