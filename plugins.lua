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

local plugins = {
	-- Treesitter
	{'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'},
	'HiPhish/nvim-ts-rainbow2',
	'nvim-treesitter/nvim-treesitter-refactor',
	'norcalli/nvim-colorizer.lua',
	{'lukas-reineke/indent-blankline.nvim', version = 'v2.*'},

	-- Status bar
	'nvim-lualine/lualine.nvim',

	-- Colorscheme
	'morhetz/gruvbox',

	-- File Tree,
	'nvim-tree/nvim-tree.lua',
	'nvim-tree/nvim-web-devicons',

	-- Tabs
	{'akinsho/bufferline.nvim', version = 'v3.*' },
	'famiu/bufdelete.nvim',
	-- Syntax
	'windwp/nvim-autopairs',
	-- Auto Completion
	{'neoclide/coc.nvim', branch = 'release'},
	'leafgarland/typescript-vim',
	-- IDE
	'nvim-lua/plenary.nvim',
	{'nvim-telescope/telescope.nvim', branch = '0.1.x' },
	'terryma/vim-multiple-cursors',
	'mhinz/vim-startify',
	'tpope/vim-repeat',
 	'akinsho/toggleterm.nvim',
	'numToStr/Comment.nvim',
	'folke/todo-comments.nvim',
	'ggandor/leap.nvim',
	-- Git
	'lewis6991/gitsigns.nvim',
	-- AI
	'zhenyangze/vim-bitoai',
}

local opts = {}

require("lazy").setup(plugins, opts)
