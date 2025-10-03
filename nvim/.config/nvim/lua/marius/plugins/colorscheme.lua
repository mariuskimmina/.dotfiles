return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000,
    config = function()
      local catppuccin = require("catppuccin")

      catppuccin.setup({
        flavour = "macchiato",
      })
      -- load the colorscheme here
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}
