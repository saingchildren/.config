require('packer').startup(function(use)
  -- Package manager
  use 'wbthomason/packer.nvim'

  -------------------------------------LSP-------------------------------------------------
  use { -- LSP Configuration & Plugins
      'neovim/nvim-lspconfig',
      requires = {
          -- Automatically install LSPs to stdpath for neovim
          'williamboman/mason.nvim',
          'williamboman/mason-lspconfig.nvim',

          -- Useful status updates for LSP
          'j-hui/fidget.nvim',

          -- Additional lua configuration, makes nvim stuff amazing
          'folke/neodev.nvim',
      },
  }

  use { -- Autocompletion
      'hrsh7th/nvim-cmp',
      requires = { 'hrsh7th/cmp-nvim-lsp', 'L3MON4D3/LuaSnip', 'saadparwaiz1/cmp_luasnip' },
  }

  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use 'onsails/lspkind-nvim'

  use 'kyazdani42/nvim-web-devicons' -- File icons

  -------------------------------------LSP-------------------------------------------------
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'nvim-lua/plenary.nvim' -- Common utilities

  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.1',
      -- or                            , branch = '0.1.x',
      requires = { { 'nvim-lua/plenary.nvim' } }
  }


  use 'nvim-telescope/telescope-file-browser.nvim'


  use {
      'nvim-treesitter/nvim-treesitter',
      run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  use 'nvim-treesitter/playground'


  use {
      'svrana/neosolarized.nvim',
      requires = { 'tjdevries/colorbuddy.nvim' }
  }

  use 'norcalli/nvim-colorizer.lua'

  use 'hrsh7th/cmp-buffer' -- nvim-cmp source for buffer words

  use { 'numToStr/Comment.nvim',
      requires = {
          'JoosepAlviste/nvim-ts-context-commentstring'
      }
  }

	use({
		"iamcco/markdown-preview.nvim",
		run = function()
			vim.fn["mkdp#util#install"]()
		end,
		setup = function()
			local g = vim.g
			g.mkdp_auto_close = 1
			g.mkdp_page_title = "${name}.md"
			g.mkdp_preview_options = {
				disable_sync_scroll = 0,
				disable_filename = 1,
			}
		end,
		ft = "markdown",
	})

  use 'L3MON4D3/LuaSnip'
  use({
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require("null-ls").setup()
      end,
      requires = { "nvim-lua/plenary.nvim" },
  })
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'prettier/vim-prettier'
  use 'metakirby5/codi.vim'
end
)
