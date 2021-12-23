local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("setup.lsp.lsp-installer")
require("setup.lsp.handlers").setup()
