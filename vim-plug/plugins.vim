" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  "autocmd VimEnter * PlugInstall | source $MYVIMRC
endif


call plug#begin('~/.config/nvim/autoload/plugged')

	" status bar
	Plug 'itchyny/lightline.vim'
	Plug 'shinchu/lightline-gruvbox.vim'

	" colorschemes
        Plug 'morhetz/gruvbox'
	Plug 'arcticicestudio/nord-vim'

call plug#end()
