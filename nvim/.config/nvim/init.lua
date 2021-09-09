
local cmd = vim.cmd  -- to execute Vim commands e.g. cmd('pwd')
local fn = vim.fn    -- to call Vim functions e.g. fn.bufnr()
local g = vim.g      -- a table to access global variables
local opt = vim.opt  -- to set options

local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

pcall(require, "impatient")
require "mk.profile"
if require "mk.first_load"() then
  return
end

g.mapleader = " "
g.snippets = "luasnip"
require "mk.globals"
require "mk.disable_builtin"
require('plugins')

-- Force loading of astronauta first.
cmd [[runtime plugin/astronauta.vim]]

-- Indentation
cmd('filetype plugin indent on')
opt.expandtab = true
opt.tabstop = 4
opt.shiftwidth = 4

cmd 'colorscheme dracula'

opt.number = true
opt.relativenumber = true
opt.termguicolors = true

require('remaps')

-- Plugin configs
require('lsp')
require('mk-lspsaga')
require('mk-cmp')
require('mk-telescope')
require('mk-treesitter')
require('mk-lualine')
require('mk-nvimtree')
