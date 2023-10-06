---- autoinstall
--local fn = vim.fn
--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--if fn.empty(fn.glob(install_path)) > 0 then
  --packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
--end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'

	use 'nvim-lua/plenary.nvim'

	-- lsp
	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'

	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	-- editorconfig
	use 'editorconfig/editorconfig-vim'

	-- autopairs
	use {
		'windwp/nvim-autopairs',
		config = function() require('nvim-autopairs').setup{} end
	}

	-- search
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- themes
	use 'sainnhe/sonokai'
	use 'jacoborus/tender.vim'

	-- misc
	use 'preservim/nerdcommenter'
	use 'machakann/vim-sandwich'
	
	use 'godlygeek/tabular'
	--use 'preservim/vim-markdown'

  if packer_bootstrap then
	require('packer').sync()
  end
end)
