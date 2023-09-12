local Util = require("marius.core.util")

-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

local opts2 = { noremap = true, silent = true }

local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts2)
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts2)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts2)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts2)

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts2)
keymap.set("v", ">", ">gv", opts2)

map("n", "<leader>gg", function()
  Util.float_term({ "lazygit" }, { cwd = Util.get_root(), esc_esc = false })
end, { desc = "Lazygit (root dir)" })
