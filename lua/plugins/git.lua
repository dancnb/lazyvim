return {
  {
    "sindrets/diffview.nvim", -- optional - Diff integration
  },
  --asd
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim", -- required
      "sindrets/diffview.nvim", -- optional - Diff integration

      -- Only one of these is needed.
      -- "nvim-telescope/telescope.nvim", -- optional
      "ibhagwan/fzf-lua", -- optional
      -- "echasnovski/mini.pick", -- optional
    },
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    config = true,
    opts = {
      enhanced_diff_hl = true,
      use_icons = true,
      view = {
        default = { layout = "diff2_horizontal" },
        merge_tool = {
          -- layout = "diff4_mixed",
          disable_diagnostics = true,
        },
      },
    },
  },
}
