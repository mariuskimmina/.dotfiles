
-- Nice remaps
vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', 'n', 'nzzzv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'N', 'Nzzzv', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'J', 'mzJ`z', { noremap = true, silent = true })

vim.api.nvim_set_keymap('i', ',', ',<c-g>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '.', '.<c-g>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '!', '!<c-g>u', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '?', '?<c-g>u', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>k', ':m .-2<CR>==', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>j', ':m .+1<CR>==', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true, silent = true })
