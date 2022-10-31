local status_ok, mason = pcall(require, "mason")
if not status_ok then
	return
end

local status_ok, masonlspconfig = pcall(require, "mason-lspconfig")
if not status_ok then
	return
end

mason.setup()
masonlspconfig.setup({
    ensure_installed = { "terraform-ls" }
})

