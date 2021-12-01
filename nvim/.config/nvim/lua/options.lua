local opt = vim.opt -- to set options

vim.cmd "filetype indent plugin on"

opt.encoding = "utf-8"
opt.cursorline = true
opt.relativenumber = true
opt.hlsearch = true
opt.hidden = true
opt.errorbells = false
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.smartcase = true
opt.nu = true
opt.wrap = false
opt.swapfile = false
opt.backup = false
opt.undodir = "/home/marius/.vim/undodir"
opt.undofile = true
opt.incsearch = true
opt.termguicolors = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.cmdheight= 1
opt.updatetime= 50
opt.colorcolumn = "120"
opt.list = true
opt.listchars = "tab:>>,space:·,eol:↲"
opt.completeopt = "menu,menuone,noselect"

-- Example config in Lua
vim.g.tokyonight_style = "storm"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]
