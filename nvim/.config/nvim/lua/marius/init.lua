vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("marius.options")
require("marius.keymaps")
require("marius.lazy")

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
