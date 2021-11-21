
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color theme
  -- use {'dracula/vim', as = 'dracula'}
  use {'folke/tokyonight.nvim'}

  -- move between nvim and tmux panes
  use {'christoomey/vim-tmux-navigator'}

  -- crazy grammar stuff
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }


  -- Statusline
  use {
    'hoob3rt/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true}
  }

  use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
  }

  -- Startpage - looking for lua alternative
  -- use {'mhinz/vim-startify'}
  use {'glepnir/dashboard-nvim'}

  -- LSP
  use {'neovim/nvim-lspconfig'}
  use {'williamboman/nvim-lsp-installer'}
  use {'hrsh7th/nvim-cmp'}
  use {'hrsh7th/cmp-nvim-lua'}
  use {'hrsh7th/cmp-nvim-lsp'}
  use {'hrsh7th/cmp-buffer'}
  use {'hrsh7th/cmp-path'}
  use {'onsails/lspkind-nvim'}
  use {'glepnir/lspsaga.nvim'}

  -- linting
  use {'dense-analysis/ale'}

  -- brackets
  use {'windwp/nvim-autopairs'}
  use {'p00f/nvim-ts-rainbow'}

  -- Snippets
  use {'L3MON4D3/luasnip'}

  use {'Pocco81/AutoSave.nvim'}

  -- Search
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'alvan/vim-closetag'}

  -- HTML stuff

  -- File Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
  }

end)
