vim.cmd [[packadd packer.nvim]]

-- Every time you add a new package run :so %
return require('packer').startup(function()
	use 'wbthomason/packer.nvim'
	use 'olimorris/onedarkpro.nvim'
	use { 
		'nvim-telescope/telescope.nvim', tag = '0.1.0', 
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use('nvim-treesitter/nvim-treesitter', {run = 'TSUpdate'})
	use { 
		'williamboman/mason.nvim',
		'williamboman/mason-lspconfig.nvim',
		'neovim/nvim-lspconfig',
		'ms-jpq/coq_nvim'
	}
	use 'andweeb/presence.nvim'
end)
