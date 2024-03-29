local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({

    "folke/tokyonight.nvim",
    "rebelot/kanagawa.nvim",
    "christoomey/vim-tmux-navigator",

    -- Telescope
    { 
        "nvim-telescope/telescope.nvim", 
        version="0.1.0", 
        dependencies = { "nvim-lua/plenary.nvim" }
    },

    -- Lualine
    { 
        "nvim-lualine/lualine.nvim",
        dependencies = { "kyazdani42/nvim-web-devicons", lazy=true }
    },

    { 
        "nvim-treesitter/nvim-treesitter",
        build = ':TSUpdate'
    },

    "mbbill/undotree",
    "tpope/vim-fugitive",
    "tpope/vim-surround",


    -- LSP
    --
    --
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    { 
        "VonHeikemen/lsp-zero.nvim",
        branch = 'v3.x',
        dependencies = {
            -- Autocompletion
            'hrsh7th/nvim-cmp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'saadparwaiz1/cmp_luasnip',
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-nvim-lua',

            -- Snippets
            'L3MON4D3/LuaSnip',
            'rafamadriz/friendly-snippets',
        }
    },
    'neovim/nvim-lspconfig',





})
