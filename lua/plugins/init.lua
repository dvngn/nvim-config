---- autoinstall
--local fn = vim.fn
--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--if fn.empty(fn.glob(install_path)) > 0 then
  --packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--end

return require('packer').startup(function(use)
	use { 'wbthomason/packer.nvim', commit = 'ea0cc3c59f67c440c5ff0bbe4fb9420f4350b9a3' }

	use { 'nvim-lua/plenary.nvim', commit = '9ce85b0f7dcfe5358c0be937ad23e456907d410b' }

	-- lsp
	use { 'neovim/nvim-lspconfig', commit = '2b361e043810d5587d9af0787f8ce40da92ec5e9' }
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- editorconfig
	use { 'editorconfig/editorconfig-vim', commit = '0d54ea863089fb13be423b4aed6cca35f3a5d778' }

	-- autopairs
	use {
		'windwp/nvim-autopairs', commit = '748e72c05495a3d30e88a6ef04b21697019a9aa9',
		config = function() require('nvim-autopairs').setup{} end
	}

	-- search
	use {
		'nvim-telescope/telescope.nvim', commit = '54930e1abfc94409e1bb9266e752ef8379008592',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- themes
	use 'sainnhe/sonokai'
	use 'jacoborus/tender.vim'

	-- misc
	use { 'preservim/nerdcommenter', commit = 'd2e21d417f6c788b11ae3b90d7ac478930dead36' }
	use { 'machakann/vim-sandwich', commit = 'c5a2cc438ce6ea2005c556dc833732aa53cae21a' }
	
	use 'godlygeek/tabular'
	--use 'preservim/vim-markdown'

  if packer_bootstrap then
	require('packer').sync()
  end
end)
