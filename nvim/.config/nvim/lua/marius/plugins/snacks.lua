return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  ---@type snacks.Config
  opts = {
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
    notifier = {
      enabled = true,
    },
    words = { enabled = false },
  },
}
