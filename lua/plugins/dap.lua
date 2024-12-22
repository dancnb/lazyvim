return {
  {
    "mfussenegger/nvim-dap",

    keys = {
      -- { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, desc = "Breakpoint Condition" },
      -- { "<leader>db", function() require("dap").toggle_breakpoint() end, desc = "Toggle Breakpoint" },
      -- { "<leader>dc", function() require("dap").continue() end, desc = "Run/Continue" },
      -- { "<leader>da", function() require("dap").continue({ before = get_args }) end, desc = "Run with Args" },
      -- { "<leader>dC", function() require("dap").run_to_cursor() end, desc = "Run to Cursor" },
      -- { "<leader>dg", function() require("dap").goto_() end, desc = "Go to Line (No Execute)" },
      -- { "<leader>di", function() require("dap").step_into() end, desc = "Step Into" },
      -- { "<leader>dj", function() require("dap").down() end, desc = "Down" },
      -- { "<leader>dk", function() require("dap").up() end, desc = "Up" },
      -- { "<leader>dl", function() require("dap").run_last() end, desc = "Run Last" },
      -- { "<leader>do", function() require("dap").step_out() end, desc = "Step Out" },
      -- { "<leader>dO", function() require("dap").step_over() end, desc = "Step Over" },
      -- { "<leader>dP", function() require("dap").pause() end, desc = "Pause" },
      -- { "<leader>dr", function() require("dap").repl.toggle() end, desc = "Toggle REPL" },
      -- { "<leader>ds", function() require("dap").session() end, desc = "Session" },
      -- { "<leader>dt", function() require("dap").terminate() end, desc = "Terminate" },
      -- { "<leader>dw", function() require("dap.ui.widgets").hover() end, desc = "Widgets" },

      {
        "<leader>dO",
        function()
          require("dap").step_out()
        end,
        desc = "Step Out",
      },
      {
        "<leader>do",
        function()
          require("dap").step_over()
        end,
        desc = "Step Over",
      },
      {
        "<leader>dd",
        function()
          require("dap").clear_breakpoints()
        end,
        desc = "Dap clear breakpoints",
      },
      -- {
      --   "<leader>dw",
      --   function()
      --     local widgets = require("dap.ui.widgets")
      --     widgets.cursor_float(widgets.expression, { title = "Espression" })
      --   end,
      --   desc = "Widgets",
      -- },
    },
  },

  {
    "rcarriga/nvim-dap-ui",
    -- lazy = true,
    -- dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    opts = {
      layouts = {
        {
          elements = {
            { id = "scopes", size = 1 },
            -- { id = "watches", size = 0.15 },
          },
          position = "bottom",
          size = 25,
        },
        {
          elements = {
            -- { id = "repl", size = 0.1 },
            { id = "console", size = 0.2 },
            { id = "breakpoints", size = 0.40 },
            { id = "stacks", size = 0.3 },
          },
          position = "right",
          size = 40,
        },
      },
    },
    -- config = function(opts)
    --   require("dapui").setup(opts)
    --
    --   local listener = require("dap").listeners
    --   listener.after.event_initialized["dapui_config"] = function()
    --     require("dapui").open()
    --   end
    --   listener.before.event_terminated["dapui_config"] = function()
    --     require("dapui").close()
    --   end
    --   listener.before.event_exited["dapui_config"] = function()
    --     require("dapui").close()
    --   end
    --   vim.keymap.set("n", "<localleader>T", function()
    --     require("dapui").toggle()
    --   end, { desc = "Toggle DAP UI" })
    -- end,
  },
}
