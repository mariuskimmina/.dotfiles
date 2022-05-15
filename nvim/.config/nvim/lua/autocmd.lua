-- Remove all trailing whitespace on save
vim.api.nvim_exec([[
  augroup TrimWhiteSpace
    au!
    autocmd BufWritePre * :%s/\s\+$//e
  augroup END
  ]], false)
-- Prevent new line to also start with a comment
vim.api.nvim_exec([[
  augroup NewLineComment
    au!
    au FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
  augroup END
  ]], false)


-- better autosaving
vim.api.nvim_create_autocmd("TextChanged", { command = "update" })
vim.api.nvim_create_autocmd("FocusLost", { command = "update" })
vim.api.nvim_create_autocmd("BufEnter", { command = "update" })
