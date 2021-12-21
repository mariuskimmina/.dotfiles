local opt = vim.opt -- to set options

-- vim.cmd "filetype indent plugin on"

opt.pumheight = 10
opt.showmode = false
opt.backup = false
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
opt.mouse = "a"
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.signcolumn = "yes"
opt.cmdheight= 2
opt.updatetime= 50
opt.colorcolumn = "120"
opt.list = true
opt.listchars = "tab:>>,space:·,eol:↲"
opt.completeopt = "menu,menuone,noselect"
opt.clipboard = "unnamedplus"
opt.splitbelow = true
opt.splitright = true
opt.swapfile = false

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]]

-- Load the colorscheme
vim.cmd[[colorscheme nord]]
