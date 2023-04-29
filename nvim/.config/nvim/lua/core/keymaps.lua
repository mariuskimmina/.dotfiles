local Util = require("core.util")

-- Space as leader key
vim.g.mapleader = ' '

local opts2 = { noremap = true, silent = true }

-- local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts2)
keymap("n", "<C-j>", "<C-w>j", opts2)
keymap("n", "<C-k>", "<C-w>k", opts2)
keymap("n", "<C-l>", "<C-w>l", opts2)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts2)
keymap("n", "<C-Down>", ":resize +2<CR>", opts2)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts2)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts2)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts2)
keymap("n", "<S-h>", ":bprevious<CR>", opts2)

-- Stay in indent mode
keymap("v", "<", "<gv", opts2)
keymap("v", ">", ">gv", opts2)

map("n", "<leader>gg", function() Util.float_term({ "lazygit" }, { cwd = Util.get_root(), esc_esc = false }) end, { desc = "Lazygit (root dir)" })
