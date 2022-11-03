if (has("termguicolors"))
    set termguicolors 	" Enables 24-bit RGB color in the terminal if its available
endif

syntax on		" Enables (Neo)Vim to show parts of the text in another font or color

let g:gruvbox_italic=1	" Enables italic font in gruvbox

let g:lightline = {}	" Lightline set gruvbox colorscheme
let g:lightline.colorscheme = 'gruvbox'

colorscheme gruvbox	" Setting colorscheme
