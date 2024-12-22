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

-- Buffers
vim.api.nvim_set_keymap("n", "tk", ":blast<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tj", ":bfirst<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "th", ":bprev<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "tl", ":bnext<enter>", { noremap = false })
vim.api.nvim_set_keymap("n", "td", ":bdelete<enter>", { noremap = false })

-- Notifier
keymap.set("n", "<leader>un", function()
  Snacks.notifier.hide()
end, { desc = "Dismiss all notification" })

-- Lazygit
keymap.set("n", "<leader>lg", function()
  Snacks.lazygit()
end, { desc = " Open Lazygit" })

-- Words
keymap.set("n", "[[", function()
  Snacks.words.jump(vim.v.count1)
end, { desc = "Next Reference" })

keymap.set("n", "]]", function()
  Snacks.words.jump(-vim.v.count1)
end, { desc = "Prev Reference" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("i", "jk", "<Esc>", { desc = "jk to go to normal mode" })

-- Diagnostic keymaps
keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous [D]iagnostic message" })
keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next [D]iagnostic message" })
keymap.set("n", "<leader>e", vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror messages" })
keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize -2<CR>", opts2)
keymap.set("n", "<C-Down>", ":resize +2<CR>", opts2)
keymap.set("n", "<C-Left>", ":vertical resize -2<CR>", opts2)
keymap.set("n", "<C-Right>", ":vertical resize +2<CR>", opts2)

-- move quickfixlist
keymap.set("n", "<leader>l", "<cmd>cnext<CR>zz", { desc = "Move forward quickfixlist" })
keymap.set("n", "<leader>h", "<cmd>cprev<CR>zz", { desc = "Move backward quickfixlist" })

-- Stay in indent mode
keymap.set("v", "<", "<gv", opts2)
keymap.set("v", ">", ">gv", opts2)

map("n", "<leader>gg", function()
  Util.float_term({ "lazygit" }, { cwd = Util.get_root(), esc_esc = false })
end, { desc = "Lazygit (root dir)" })

keymap.set("n", "<leader>np", ":NoNeckPain<CR>", opts2)
