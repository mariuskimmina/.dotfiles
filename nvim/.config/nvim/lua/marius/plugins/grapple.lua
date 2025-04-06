return {
  "cbochs/grapple.nvim",
  dependencies = {
    { "nvim-tree/nvim-web-devicons", lazy = true },
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>m", require("grapple").toggle)
    keymap.set("n", "ms", require("grapple").toggle_tags)
    keymap.set("n", "mn", "<cmd>Grapple cycle_tags next<cr>")
    keymap.set("n", "mp", "<cmd>Grapple cycle_tags prev<cr>")
    vim.keymap.set("n", "m1", "<cmd>Grapple select index=1<cr>")
    vim.keymap.set("n", "m2", "<cmd>Grapple select index=2<cr>")
    vim.keymap.set("n", "m3", "<cmd>Grapple select index=3<cr>")
    vim.keymap.set("n", "m4", "<cmd>Grapple select index=4<cr>")

    -- require("telescope").load_extension("grapple")
    -- keymap.set("n", "<leader>sm", ":Telescope grapple tags<CR>")
  end,
}
