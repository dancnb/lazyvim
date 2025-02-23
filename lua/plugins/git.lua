return {
  {
    "sindrets/diffview.nvim", -- optional - Diff integration
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    opts = {
      enhanced_diff_hl = true,
      use_icons = true,
      view = {
        default = { layout = "diff2_horizontal" },
        merge_tool = {
          -- layout = "diff3_mixed", -- diff3_mixed diff3_plain diff4_mixed diff4_plain
          disable_diagnostics = true,
        },
      },
    },
  },
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
    config = true,
  },
}
