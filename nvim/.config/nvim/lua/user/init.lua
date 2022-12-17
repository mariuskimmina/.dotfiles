require("user.options")
require("user.keymaps")

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
