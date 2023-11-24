vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.0',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use 'tanvirtin/monokai.nvim'
	use (
		'nvim-treesitter/nvim-treesitter',
		{run = ':TSUpdate'}
	)
	use('nvim-treesitter/playground')
	use('theprimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-fugitive')
	use {
  		'VonHeikemen/lsp-zero.nvim',
  		branch = 'v3.x',
  		requires = {
   		 --- Uncomment these if you want to manage LSP servers from neovim
        	{'williamboman/mason.nvim'},
        	{'williamboman/mason-lspconfig.nvim'},

    -- LSP Support
    		{'neovim/nvim-lspconfig'},
    -- Autocompletion
    		{'hrsh7th/nvim-cmp'},
    		{'hrsh7th/cmp-nvim-lsp'},
    		{'L3MON4D3/LuaSnip'},
  		}
	}
	use {
		'simrat39/rust-tools.nvim'
	}
	use 'glepnir/lspsaga.nvim'
	use 'mfussenegger/nvim-dap'
	use 'rcarriga/nvim-dap-ui'
	use 'williamboman/mason.nvim'
	use 'ThePrimeagen/vim-be-good'
	use 'windwp/nvim-autopairs'
end)

