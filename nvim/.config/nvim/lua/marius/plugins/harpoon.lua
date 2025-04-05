return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  config = function()
    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<leader>m", "<cmd>lua require('harpoon.mark').add_file()<cr>", { desc = "Mark file with harpoon" })
    keymap.set("n", "mn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
    keymap.set("n", "mp", "<cmd>lua require('harpoon.ui').nav_prev()<cr>", { desc = "Go to previous harpoon mark" })
    keymap.set("n", "m1", "<cmd>lua require('harpoon.ui').nav_file(1)<cr>", { desc = "Go to mark 1" })
    keymap.set("n", "m2", "<cmd>lua require('harpoon.ui').nav_file(2)<cr>", { desc = "Go to mark 2" })
    keymap.set("n", "m3", "<cmd>lua require('harpoon.ui').nav_file(3)<cr>", { desc = "Go to mark 3" })
    keymap.set("n", "m4", "<cmd>lua require('harpoon.ui').nav_file(4)<cr>", { desc = "Go to mark 4" })
    keymap.set(
      "n",
      "ms",
      "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
      { desc = "show harpoon quick menu" }
    )
  end,
}
