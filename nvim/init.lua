-- vim.opt.runtimepath:append(',~/nvim,~/nvim/after')

require("options")
require("keymaps")

require('packer').startup(function(use)
	-- packer itself
	use 'wbthomason/packer.nvim'

	-- colorscheme
	--	use 'navarasu/onedark.nvim'

	use 'sainnhe/gruvbox-material'
	-- Available values: 'hard', 'medium'(default), 'soft'
	vim.g.gruvbox_material_background = 'medium'
	-- For better performance
	vim.g.gruvbox_material_better_performance = 1
	vim.cmd('colorscheme gruvbox-material')

	-- telescope 
	use {
		"nvim-telescope/telescope.nvim",
		tag = '0.1.0',
		requires = {
			{ "nvim-lua/plenary.nvim" }
		}
	}

	-- treesitter
	use {
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = {
			{ 'nvim-tree/nvim-web-devicons' }
		}
	}

	-- lsp, autocmp
	use {
		'VonHeikemen/lsp-zero.nvim',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-buffer'},
			{'hrsh7th/cmp-path'},
			{'saadparwaiz1/cmp_luasnip'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'hrsh7th/cmp-nvim-lua'},

			-- Snippets
			{'L3MON4D3/LuaSnip'},
			{'rafamadriz/friendly-snippets'},
		}
	}

end)

