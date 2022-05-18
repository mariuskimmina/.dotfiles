local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

local keymap = vim.api.nvim_set_keymap
keymap("", "<Space>", "<Nop>", opts)

-- Map leader to space
vim.g.mapleader = " "


-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Get into normal mode comfortably
keymap("i", "jjk", "<ESC>", opts)

-- Telescope
keymap("n", "<leader>tf", '<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({ previewer = false }))<cr>', opts)
keymap("n", "<leader>tg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap("n", "<leader>tos", '<cmd>lua require("setup.telescope").search_opensource()<CR>',opts)
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope diagnostics<cr>", {buffer=0})

-- vim.keymap.set("i", "<esc>", "<esc>:update<cr>", { silent = true })

-- neoclip
-- Having more stuff on my clipboard
keymap("n", "<leader>p", [[<Cmd>lua require('telescope').extensions.neoclip.plus()<CR>]], opts)

-- NvimTree
keymap("n", "<leader>n", ":NvimTreeToggle<CR>", opts)


-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m .+1<CR>==", opts)
keymap("v", "<A-k>", ":m .-2<CR>==", opts)
keymap("v", "p", '"_dP', opts)

keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)
