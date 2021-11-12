lua require("mk")

" LSP
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gt :Lspsaga hover_doc<CR>
nnoremap <silent>gh :Lspsaga lsp_finder<CR>
nnoremap <silent>gs :Lspsaga signature_help<CR>
nnoremap <silent>gr :Lspsaga rename<CR>
nnoremap <silent><leader>ca :Lspsaga code_action<CR>
vnoremap <silent><leader>ca :<C-U>Lspsaga range_code_action<CR>
nnoremap <silent><leader>cd :Lspsaga show_line_diagnostics<CR>
nnoremap <silent>[e :Lspsaga diagnostic_jump_next<CR>
nnoremap <silent>]e :Lspsaga diagnostic_jump_prev<CR>
nnoremap <silent><A-d> :Lspsaga open_floaterm<CR>
tnoremap <silent><A-d> <C-\><C-n>:Lspsaga close_floaterm<CR><

" Telescope
nnoremap <leader>tf <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>tg <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>ts <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>tl <cmd>lua require('telescope.builtin').live_grep()<CR>

" NvimTree
nnoremap <leader>n <cmd>NvimTreeToggle<CR>

" Barbar
" Move to previous/next
nnoremap <silent>    <leader>h :BufferPrevious<CR>
nnoremap <silent>    <leader>l :BufferNext<CR>
