local load = function(mod)
  package.loaded[mod] = nil
  require(mod)
end

load("core.settings")
load("core.keymaps")
load("core.plugins")
load("core.commands")

pcall(vim.cmd.colorscheme, "catppuccin")

local nvim_lsp = require 'lspconfig'
local configs = require 'lspconfig.configs'

configs.rego_language_server.setup {}
