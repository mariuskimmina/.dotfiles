local Plugins = {
	{ "tpope/vim-fugitive" },
	{ "numToStr/Comment.nvim", config = true, event = "VeryLazy" },

	-- Common dependencies
	{ "MunifTanjim/nui.nvim", lazy = true },
	{ "nvim-lua/plenary.nvim", lazy = true },
	{ "kyazdani42/nvim-web-devicons", lazy = true },

	-- Theme
	{ "catppuccin/nvim", name = "catppuccin" },
}

return Plugins
