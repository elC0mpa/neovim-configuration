" Usual commands
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-w> :Bdelete<CR>

" Navigation commands
nnoremap <C-b> :NvimTreeToggle<CR>
" nnoremap <C-h> :tabprevious<CR>
" nnoremap <C-l> :tabnext<CR>
nnoremap <C-h> :bprevious<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Split commands
nnoremap <C-v> <C-w>v
" Split Navigation commands
nnoremap <A-l> <C-w>l
nnoremap <A-h> <C-w>h

" Scrolling (not working right now)
nnoremap <C-j> 10<C-e>
nnoremap <C-k> 10<C-y>

" GoTo's
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Find files
nnoremap <C-p> :FZF -i<CR>
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-s': 'split',
  \ 'ctrl-v': 'vsplit'
  \}

" Terminal
nnoremap <C-j> :ToggleTerm<CR>
:tnoremap <Esc> <C-\><C-n>

" Find
nnoremap // :noh<CR>
nnoremap <C-f> :Rg<CR>


" Coc


" Comment
" nnoremap <C-/> :call NERDComment(0,"toggle")
" nnoremap <C-k><C-u> :call NERDCommenterUncomment()
