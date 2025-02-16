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

-- Set up the keybinding for visual mode
vim.keymap.set(
  "v",
  "<leader>gc",
  function()
    -- Get the selected text (commit hash) from visual mode
    local commit_hash = table.concat(vim.fn.getregion(vim.fn.getpos("v"), vim.fn.getpos(".")), "\n")

    -- Check if the selected text is a valid commit hash
    if string.len(commit_hash) > 0 then
      -- Open Diffview with the commit hash against its parent
      vim.cmd("DiffviewOpen " .. commit_hash .. "^!")
    else
      vim.notify("No commit hash selected!", vim.log.levels.WARN, { title = "Diffview" })
    end
  end,
  -- ":lua open_diffview_with_commit_from_selection()<CR>",
  { noremap = true, desc = "Git View Commit" }
)
