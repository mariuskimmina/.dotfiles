return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
    bigfile = { enabled = false },
    dashboard = {
      enabled = true,
      example = "compact_files",
    },
    indent = {
      enabled = false,
    },
    lazygit = {
      enabled = true,
    },
    input = { enabled = false },
    notifier = {
      enabled = true,
    },
    quickfile = { enabled = false },
    scroll = { enabled = false },
    statuscolumn = { enabled = false },
    words = { enabled = false },
  },
}
