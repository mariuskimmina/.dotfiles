return {
  "folke/snacks.nvim",
  opts = {
    explorer = {},
    picker = {
      sources = {
        explorer = {
          hidden = true,
          layout = {
            layout = {
              position = "right",
            },
          },
        },
      },
    },
  },
  keys = {
    -- Top Pickers & Explorer
    { "<leader>sf", function() Snacks.picker.smart() end,                 desc = "Smart Find Files" },
    { "<leader>,",  function() Snacks.picker.buffers() end,               desc = "Buffers" },
    { "<leader>/",  function() Snacks.picker.grep() end,                  desc = "Grep" },
    { "<leader>:",  function() Snacks.picker.command_history() end,       desc = "Command History" },
    { "<leader>nh", function() Snacks.picker.notifications() end,         desc = "Notification History" },
    { "<leader>ee", function() Snacks.explorer() end,                     desc = "File Explorer" },
    -- find
    { "<leader>fb", function() Snacks.picker.buffers() end,               desc = "Buffers" },
    { "<leader>ff", function() Snacks.picker.files() end,                 desc = "Find Files" },
    { "<leader>fg", function() Snacks.picker.git_files() end,             desc = "Find Git Files" },
    { "<leader>fp", function() Snacks.picker.projects() end,              desc = "Projects" },
    { "<leader>fr", function() Snacks.picker.recent() end,                desc = "Recent" },
    -- git
    { "<leader>gb", function() Snacks.picker.git_branches() end,          desc = "Git Branches" },
    { "<leader>gl", function() Snacks.picker.git_log() end,               desc = "Git Log" },
    -- Grep
    { "<leader>sg", function() Snacks.picker.grep() end,                  desc = "Grep" },
    -- search
    { '<leader>s/', function() Snacks.picker.search_history() end,        desc = "Search History" },
    { "<leader>sC", function() Snacks.picker.commands() end,              desc = "Commands" },
    { "<leader>sd", function() Snacks.picker.diagnostics() end,           desc = "Diagnostics" },
    { "<leader>sD", function() Snacks.picker.diagnostics_buffer() end,    desc = "Buffer Diagnostics" },
    { "<leader>si", function() Snacks.picker.icons() end,                 desc = "Icons" },
    { "<leader>sj", function() Snacks.picker.jumps() end,                 desc = "Jumps" },
    { "<leader>sk", function() Snacks.picker.keymaps() end,               desc = "Keymaps" },
    { "<leader>sl", function() Snacks.picker.loclist() end,               desc = "Location List" },
    { "<leader>sm", function() Snacks.picker.marks() end,                 desc = "Marks" },
    { "<leader>sM", function() Snacks.picker.man() end,                   desc = "Man Pages" },
    { "<leader>sp", function() Snacks.picker.lazy() end,                  desc = "Search for Plugin Spec" },
    { "<leader>sq", function() Snacks.picker.qflist() end,                desc = "Quickfix List" },
    { "<leader>su", function() Snacks.picker.undo() end,                  desc = "Undo History" },
    { "<leader>uC", function() Snacks.picker.colorschemes() end,          desc = "Colorschemes" },
    -- LSP
    { "gd",         function() Snacks.picker.lsp_definitions() end,       desc = "Goto Definition" },
    { "gD",         function() Snacks.picker.lsp_declarations() end,      desc = "Goto Declaration" },
    { "gr",         function() Snacks.picker.lsp_references() end,        nowait = true,                  desc = "References" },
    { "gI",         function() Snacks.picker.lsp_implementations() end,   desc = "Goto Implementation" },
    { "gy",         function() Snacks.picker.lsp_type_definitions() end,  desc = "Goto T[y]pe Definition" },
    { "<leader>ss", function() Snacks.picker.lsp_symbols() end,           desc = "LSP Symbols" },
    { "<leader>sS", function() Snacks.picker.lsp_workspace_symbols() end, desc = "LSP Workspace Symbols" },
  },
}
