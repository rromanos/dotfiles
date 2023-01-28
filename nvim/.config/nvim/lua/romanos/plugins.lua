return require("packer").startup(function(use)
	use("wbthomason/packer.nvim")

	-- use("morhetz/gruvbox")
	use("ellisonleao/gruvbox.nvim")
	-- use("p00f/nvim-ts-rainbow")

	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	-- use("tpope/vim-commentary")
	use("tpope/vim-surround")
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("windwp/nvim-ts-autotag")

	use("lambdalisue/suda.vim")
	use("tpope/vim-eunuch")
	use("fladson/vim-kitty")

	-- use("voldikss/vim-floaterm")
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use("rafaqz/ranger.vim")
	-- use {'scrooloose/nerdtree', opt = true, cmd = {'NERDTreeToggle', 'NERDTreeFind'}}
	use("kyazdani42/nvim-web-devicons")

	use("tpope/vim-fugitive")
	use("airblade/vim-rooter")
	use("nvim-lualine/lualine.nvim")

	use({
		"nvim-telescope/telescope-fzf-native.nvim",
		run = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build",
	})
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	use("sbdchd/neoformat")

	use("neovim/nvim-lspconfig")

	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-nvim-lua")
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-cmdline")
	use("onsails/lspkind.nvim")
	use("simrat39/symbols-outline.nvim")

	use("rafamadriz/friendly-snippets")
	use({ "L3MON4D3/LuaSnip", run = "make install_jsregexp" })
	use("saadparwaiz1/cmp_luasnip")

	use("nvim-treesitter/nvim-treesitter", {
		run = ":TSUpdate",
	})
	use("romgrk/nvim-treesitter-context")
	-- use("nvim-treesitter/playground")
	-- use("mfussenegger/nvim-dap")
end)
