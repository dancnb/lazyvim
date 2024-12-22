return {
  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-storm",
    },
  },

  -- {
  --   'rose-pine/neovim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   name = 'rose-pine',
  --   config = function()
  --     require('rose-pine').setup {
  --       variant = 'moon', -- auto, main, moon, or dawn
  --       dark_variant = 'main', -- main, moon, or dawn
  --       dim_inactive_windows = false,
  --       extend_background_behind_borders = true,
  --       enable = {
  --         terminal = true,
  --         legacy_highlights = true, -- Improve compatibility for previous versions of Neovim
  --         migrations = true, -- Handle deprecated options automatically
  --       },
  --       styles = {
  --         bold = true,
  --         italic = true,
  --         transparency = false,
  --       },
  --     }
  --   end,
  --   init = function()
  --     vim.cmd 'colorscheme rose-pine'
  --   end,
  -- },

  -- {
  --   'rebelot/kanagawa.nvim',
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     require('kanagawa').setup {}
  --   end,
  --   init = function()
  --     vim.cmd.colorscheme 'kanagawa'
  --     -- vim.cmd.colorscheme 'kanagawa-wave'
  --     -- vim.cmd.colorscheme 'kanagawa-dragon'
  --     -- vim.cmd.colorscheme 'kanagawa-lotus'
  --   end,
  -- },

  -- {
  --   "EdenEast/nightfox.nvim",
  --   priority = 1000, -- Make sure to load this before all the other start plugins.
  --   config = function()
  --     require("nightfox").setup({
  --       options = {
  --         styles = {
  --           comments = "italic",
  --           keywords = "bold",
  --           types = "italic,bold",
  --         },
  --       },
  --     })
  --   end,
  --   init = function()
  --     -- vim.cmd.colorscheme 'nightfox'
  --     -- vim.cmd.colorscheme 'dayfox'
  --     -- vim.cmd.colorscheme 'dawnfox'
  --     -- vim.cmd.colorscheme 'duskfox'
  --     vim.cmd.colorscheme("nordfox")
  --     -- vim.cmd.colorscheme 'terafox'
  --     -- vim.cmd.colorscheme 'carbonfox'
  --   end,
  -- },

  {
    "folke/tokyonight.nvim",
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      --'tokyonight',  'tokyonight-night', 'tokyonight-storm', 'tokyonight-moon', 'tokyonight-day'.
      vim.cmd.colorscheme("tokyonight-moon")
      -- You can configure highlights by doing something like:
      vim.cmd.hi("Comment gui=none")
    end,
  },

  -- {
  --   'sainnhe/gruvbox-material',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     -- Optionally configure and load the colorscheme
  --     -- directly inside the plugin declaration.
  --     vim.g.gruvbox_material_enable_italic = true
  --     vim.cmd.colorscheme 'gruvbox-material'
  --   end,
  -- },

  -- {
  --   'AlexvZyl/nordic.nvim',
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     require('nordic').load()
  --   end,
  -- },
}
