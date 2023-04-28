local load = function(mod)
	package.loaded[mod] = nil
	require(mod)
end

load("core.settings")
load("core.keymaps")
load("core.plugins")

pcall(vim.cmd.colorscheme, "catppuccin")
