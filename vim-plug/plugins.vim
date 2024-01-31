" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" syntax
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'HiPhish/nvim-ts-rainbow2'
	Plug 'nvim-treesitter/nvim-treesitter-refactor'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'lukas-reineke/indent-blankline.nvim'

	" status bar
	Plug 'nvim-lualine/lualine.nvim'

	" Themes
	Plug 'morhetz/gruvbox'

	" Tree
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons'

	" Tabs
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
	Plug 'famiu/bufdelete.nvim'

	" typing
	Plug 'windwp/nvim-autopairs'

	" autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'leafgarland/typescript-vim'

	" IDE
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
	Plug 'terryma/vim-multiple-cursors'
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-repeat'
 	Plug 'akinsho/toggleterm.nvim'
	Plug 'numToStr/Comment.nvim'
	Plug 'folke/todo-comments.nvim'
	Plug 'ggandor/leap.nvim'

	" git
	Plug 'lewis6991/gitsigns.nvim'

	" markdown
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install' }

	" AI
	Plug 'zhenyangze/vim-bitoai'

call plug#end()
