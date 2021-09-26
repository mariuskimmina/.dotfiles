
local has_lsp, lspconfig = pcall(require, "lspconfig")
if not has_lsp then
  return
end

vim.opt.completeopt = {'menuone', 'noinsert', 'noselect'}

require'lspconfig'.gopls.setup{
    on_attach=require'completion'.on_attach
}

