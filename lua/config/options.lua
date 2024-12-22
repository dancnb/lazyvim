-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.relativenumber = false

vim.g.snacks_animate = false

if vim.g.neovide then
  vim.g.neovide_cursor_animation_length = 0.01
  -- vim.g.neovide_scroll_animation_length = 0.04
end
