" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

	" syntax
	Plug 'sheerun/vim-polyglot'
	Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'ianks/vim-tsx'
	Plug 'leafgarland/typescript-vim'

	" status bar
	Plug 'shinchu/lightline-gruvbox.vim'
	Plug 'itchyny/lightline.vim'

	" Themes
	Plug 'morhetz/gruvbox'

	" Tree
	Plug 'kyazdani42/nvim-tree.lua'
	Plug 'kyazdani42/nvim-web-devicons'

	" Tabs
	Plug 'akinsho/bufferline.nvim'
	Plug 'famiu/bufdelete.nvim'

	" typing
	Plug 'alvan/vim-closetag'
	Plug 'tpope/vim-surround'
	Plug 'jiangmiao/auto-pairs'

	" autocomplete
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'leafgarland/typescript-vim'

	" test
	Plug 'tyewang/vimux-jest-test'
	Plug 'janko-m/vim-test'

	" IDE
	Plug 'editorconfig/editorconfig-vim'
	Plug 'junegunn/fzf'
	Plug 'junegunn/fzf.vim'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'easymotion/vim-easymotion'
	Plug 'yggdroot/indentline'
	Plug 'scrooloose/nerdcommenter'
	Plug 'mhinz/vim-startify'
	Plug 'tpope/vim-repeat'
  Plug 'akinsho/toggleterm.nvim'

	" git
	Plug 'nvim-lua/plenary.nvim'
	Plug 'lewis6991/gitsigns.nvim'

call plug#end()
