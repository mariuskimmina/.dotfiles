-- Inspired by https://github.com/Allaman/nvim/blob/main/init.lua

-- Plugin management via Packer
require("plugins")

-- All non plugin related (vim) options
require("options")

-- Vim mappings, see lua/config/which.lua for more mappings
require("mappings")

-- Vim autocommands/autogroups
require("autocmd")
