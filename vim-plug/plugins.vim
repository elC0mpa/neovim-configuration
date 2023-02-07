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
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'lukas-reineke/indent-blankline.nvim'

	" status bar
	Plug 'shinchu/lightline-gruvbox.vim'
	Plug 'itchyny/lightline.vim'

	" Themes
	Plug 'morhetz/gruvbox'

	" Tree
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'kyazdani42/nvim-web-devicons'

	" Tabs
	Plug 'akinsho/bufferline.nvim', {'tag': 'v2.*'}
	Plug 'famiu/bufdelete.nvim'

	" typing
	Plug 'windwp/nvim-autopairs'

	" autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'leafgarland/typescript-vim'

	" IDE
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'easymotion/vim-easymotion'
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-repeat'
 	Plug 'akinsho/toggleterm.nvim'
	Plug 'numToStr/Comment.nvim'

	" git
	Plug 'nvim-lua/plenary.nvim'
	Plug 'lewis6991/gitsigns.nvim'

call plug#end()
