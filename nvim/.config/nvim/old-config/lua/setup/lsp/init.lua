local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
	return
end

require("setup.lsp.mason")
require("setup.lsp.handlers").setup()
