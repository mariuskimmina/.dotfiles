local Util = require("core.util")

-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

local opts2 = { noremap = true, silent = true }

-- local term_opts = { silent = true }

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
keymap("v", "<", "<gv", opts2)
keymap("v", ">", ">gv", opts2)
