vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

local fn = vim.fn
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

-- bootstrap packer if not installed
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({
    "git", "clone", "--depth", "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
end
vim.api.nvim_command("packadd packer.nvim")


function get_setup(name)
  return string.format('require("setup/%s")', name)
end

return require("packer").startup({
  function(use)
    use("wbthomason/packer.nvim")

    use {'christoomey/vim-tmux-navigator'}
    use({ "kyazdani42/nvim-web-devicons" })
    use {"rebelot/kanagawa.nvim"}
    use({
      "nvim-lualine/lualine.nvim",
      config = get_setup("lualine"),
      event = "VimEnter",
      requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({
      "nvim-treesitter/nvim-treesitter",
      config = get_setup("treesitter"),
      run = ":TSUpdate",
    })
    use("nvim-treesitter/nvim-treesitter-textobjects")
    use({
      "windwp/nvim-autopairs",
      after = "nvim-cmp",
      config = get_setup("autopairs"),
    })
    use({
      "hrsh7th/nvim-cmp",
      requires = {
        { "hrsh7th/cmp-nvim-lsp" },
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { 'saadparwaiz1/cmp_luasnip' },
        { "f3fora/cmp-spell", { "hrsh7th/cmp-calc" }, { "hrsh7th/cmp-emoji" } },
      },
      config = get_setup("cmp"),
    })
    use({ "kyazdani42/nvim-tree.lua", config = get_setup("nvimtree") })
    use({ "nvim-lua/lsp-status.nvim" })
    use("p00f/nvim-ts-rainbow")
    use({ "neovim/nvim-lspconfig"})
    use({
      "nvim-telescope/telescope.nvim",
      module = "telescope",
      cmd = "Telescope",
      requires = {
        { "nvim-lua/popup.nvim" },
        { "nvim-lua/plenary.nvim" },
        { "nvim-telescope/telescope-fzy-native.nvim" },
      },
      config = get_setup("telescope"),
    })
    use {
      'akinsho/bufferline.nvim',
      requires = {'kyazdani42/nvim-web-devicons'},
      config = get_setup("bufferline")
    }
    use({ "L3MON4D3/LuaSnip", config = get_setup("luasnip") })
    use{"rafamadriz/friendly-snippets"}
    use({ "AckslD/nvim-neoclip.lua", config = get_setup("neoclip") })
    use({ "onsails/lspkind-nvim", requires = { { "famiu/bufdelete.nvim" } } })
    use {'glepnir/lspsaga.nvim'}
    use {'lewis6991/gitsigns.nvim', config = get_setup("gitsigns")}
    use {'williamboman/nvim-lsp-installer'}
    use({ "goolord/alpha-nvim", config = get_setup("alpha") })
    if packer_bootstrap then
      require("packer").sync()
    end
  end,
  config = {
    display = {
      open_fn = require("packer.util").float,
    },
    profile = {
      enable = true,
      threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
    },
  },
})
