lua require("mk")

" LSP
nnoremap gd :lua vim.lsp.buf.definition()<CR>
nnoremap <silent>gt :Lspsaga hover_doc<CR>
nnoremap <silent>gh <Cmd>Lspsaga lsp_finder<CR>

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
