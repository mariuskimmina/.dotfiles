local load = function(mod)
	package.loaded[mod] = nil
	require(mod)
end

load("core.settings")
load("core.keymaps")
load("core.plugins")
load("core.commands")

pcall(vim.cmd.colorscheme, "catppuccin")

vim.lsp.start({
  name = 'rego-language-server',
  cmd = {'/home/marius/projects/rego-language-server/rego-language-server', 'serve', 'stdio'},
  root_dir = vim.fs.dirname(vim.fs.find({'setup.py', 'pyproject.toml'}, { upward = true })[1]),
})
