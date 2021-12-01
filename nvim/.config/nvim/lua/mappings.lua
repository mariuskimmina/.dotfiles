local function map(mode, lhs, rhs, opts)
  local options = { noremap = true }
  if opts then
    options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Map leader to space
vim.g.mapleader = " "



-- vnoremap > >gv
-- vnoremap < <gv

-- LSP
map("n", "gd", "<cmd> lua vim.lsp.buf.definition")
map("n", "gR", "<cmd> lua vim.lsp.buf.references")

map("n", "gt", "<cmd> Lspsaga hover_doc")
map("n", "gh", "<cmd> Lspsaga lsp_finder")
map("n", "gs", "<cmd> Lspsaga signature_help")
map("n", "gr", "<cmd> Lspsaga rename")
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
map("n", "<leader>tf", '<cmd>lua require("telescope.builtin").find_files()<cr>')
map("n", "<leader>tl", '<cmd>lua require("telescope.builtin").live_grep()<cr>')

-- NvimTree
map("n", "<leader>n", ":NvimTreeToggle<CR>", { silent = true })

-- Barbar
map("n", "<leader>h", ":BufferPrevious<CR>", { silent = true })
map("n", "<leader>l", ":BufferNext<CR>", { silent = true })
