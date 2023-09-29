-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  -- Rose Pine (Theme)
  use({ 'rose-pine/neovim', as = 'rose-pine' })
  -- Telescope (Fuzzy Finder)
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.3',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  -- Treesitter (Language Parser)
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
  use('nvim-treesitter/playground')
  -- Harpoon (Handy file switcher)
  use('theprimeagen/harpoon')
  -- UndoTree (Full history of changes)
  use('mbbill/undotree')
  -- vim-fugitive (Git-Support)
  use('tpope/vim-fugitive')
  -- LSP
  use {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v1.x',
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
  -- neo-tree
  use {
      "nvim-neo-tree/neo-tree.nvim",
      branch = "v3.x",
      requires = {
          "nvim-lua/plenary.nvim",
          "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
          "MunifTanjim/nui.nvim",
      }
  }
  -- lualine
  use ('nvim-lualine/lualine.nvim')
  -- liveserver
  use ('barrett-ruth/live-server.nvim')
  -- formatter.nvim
  use('mhartington/formatter.nvim')
  -- vim be good
  use ('theprimeagen/vim-be-good')
end)
