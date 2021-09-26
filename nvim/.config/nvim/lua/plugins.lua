
return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Color theme
  use {'dracula/vim', as = 'dracula'}

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

  -- Startpage - looking for lua alternative
  use {'mhinz/vim-startify'}

  -- LSP
  use {'neovim/nvim-lspconfig'}
  use {'nvim-lua/completion-nvim'}

  -- Search
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

end)
