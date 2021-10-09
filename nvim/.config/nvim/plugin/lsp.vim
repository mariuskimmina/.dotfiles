

set completeopt=menuone,noselect
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']

nnoremap gd :lua vim.lsp.buf.definition()<CR>
