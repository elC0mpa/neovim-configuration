" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

	" status bar
	Plug 'nvim-lualine/lualine.nvim'

	" colorschemes
        Plug 'morhetz/gruvbox'
	Plug 'arcticicestudio/nord-vim'

	" nvim-tree
	Plug 'nvim-tree/nvim-tree.lua'
	Plug 'nvim-tree/nvim-web-devicons' " optional, for file icons

	" code autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	" treesitter
	Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
	Plug 'HiPhish/nvim-ts-rainbow2'
	Plug 'nvim-treesitter/nvim-treesitter-refactor'

	" terminal
	Plug 'akinsho/toggleterm.nvim', {'tag' : '*'}

	" tabs
	Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.*' }
	Plug 'famiu/bufdelete.nvim'

	" git
	Plug 'lewis6991/gitsigns.nvim'

	" telescope
	Plug 'nvim-lua/plenary.nvim'
	Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' }

	" comments
	Plug 'numToStr/Comment.nvim'
call plug#end()
