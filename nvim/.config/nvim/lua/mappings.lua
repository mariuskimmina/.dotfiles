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


-- LSP
-- keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
-- keymap("n", "gR", "<cmd>lua vim.lsp.buf.references<CR>", opts)

-- keymap("n", "gt", "<cmd> Lspsaga hover_doc<CR>", opts)
-- keymap("n", "gh", "<cmd> Lspsaga lsp_finder<CR>", opts)
-- keymap("n", "gs", "<cmd> Lspsaga signature_help<CR>", opts)
-- keymap("n", "gr", "<cmd> Lspsaga rename<CR>", opts)
-- nnoremap gd :lua vim.lsp.buf.definition()<CR>
-- nnoremap gR :lua vim.lsp.buf.references()<CR>
-- nnoremap <silent>gt :Lspsaga hover_doc<CR>
-- nnoremap <silent>gh :Lspsaga lsp_finder<CR>
-- nnoremap <silent>gs :Lspsaga signature_help<CR>
-- nnoremap <silent>gr :Lspsaga rename<CR>
-- nnoremap <silent><leader>ca :Lspsaga code_action<CR>
-- vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
-- nnoremap <silent><leader>cd :Lspsaga show_line_diagnostics<CR>
-- nnoremap <silent>[e :Lspsaga diagnostic_jump_next<CR>
-- nnoremap <silent>]e :Lspsaga diagnostic_jump_prev<CR>
-- nnoremap <silent><A-d> :Lspsaga open_floaterm<CR>
-- tnoremap <silent><A-d> <C-\><C-n>:Lspsaga close_floaterm<CR><

-- Telescope
keymap("n", "<leader>tf", '<cmd>lua require("telescope.builtin").find_files(require("telescope.themes").get_dropdown({ previewer = false }))<cr>', opts)
keymap("n", "<leader>tg", '<cmd>lua require("telescope.builtin").live_grep()<cr>', opts)
keymap("n", "<leader>tos", '<cmd>lua require("setup.telescope").search_opensource()<CR>',opts)

-- neoclip
-- Having more stuff on my clipboard
keymap("n", "<leader>p", [[<Cmd>lua require('telescope').extensions.neoclip.plus()<CR>]], opts)

-- Barbar
-- keymap("n", "<leader>h", ":BufferPrevious<CR>", opts)
-- keymap("n", "<leader>l", ":BufferNext<CR>", opts)

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
