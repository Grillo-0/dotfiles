-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use "wbthomason/packer.nvim" -- Package Manager
	use "ellisonleao/gruvbox.nvim" -- Gruvbox Color Scheme
	use {
		'nvim-telescope/telescope.nvim', brach = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'tpope/vim-fugitive' -- Git Wrapper
	use 'airblade/-gitgutter'
	use 'lewis6991/gitsigns.nvim' -- Git diff markers
	use({'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}) -- Syntax highlighting with Tree-sitter

	-- LSP Zero for LSP shenanigans
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

	use('mbbill/undotree')
	use('tpope/vim-unimpaired')
	use('/gpanders/editorconfig.nvim')
end)
