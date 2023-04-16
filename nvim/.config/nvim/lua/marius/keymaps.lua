-- keybindings
--
local Util = require("marius.util")

local opts2 = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

local function map(mode, lhs, rhs, opts)
  opts = opts or {}
  opts.silent = opts.silent ~= false
  vim.keymap.set(mode, lhs, rhs, opts)
end

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts2)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

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


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts2)
keymap("v", ">", ">gv", opts2)


keymap("n", "<leader>n", ":NeoTreeRevealToggle<CR>", opts2)

-- Telescope
keymap("n", "<leader>ff",
  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>"
  , opts2)
keymap("n", "<leader>ft", "<cmd>Telescope live_grep<cr>", opts2)


keymap("n", "<c-d>", "<c-d>zz", opts2)
keymap("n", "<c-u>", "<c-u>zz", opts2)
keymap("n", "n", "nzzzv", opts2)
keymap("n", "N", "Nzzzv", opts2)

keymap("n", "<leader>hm", ':lua require("harpoon.mark").add_file()<CR>', opts2)
keymap("n", "<leader>hl", ':lua require("harpoon.ui").toggle_quick_menu()<CR>', opts2)

map("n", "<leader>gg", function() Util.float_term({ "lazygit" }, { cwd = Util.get_root(), esc_esc = false }) end, { desc = "Lazygit (root dir)" })
