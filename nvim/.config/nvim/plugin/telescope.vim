lua require("mk")

nnoremap <leader>tf <cmd>lua require('telescope.builtin').find_files()<CR>
nnoremap <leader>tg <cmd>lua require('telescope.builtin').git_files()<CR>
nnoremap <leader>ts <cmd>lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>tl <cmd>lua require('telescope.builtin').live_grep()<CR>
