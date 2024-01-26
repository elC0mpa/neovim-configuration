" Usual commands
nnoremap <C-s> :w<CR>
nnoremap <C-q> :q<CR>
nnoremap <C-w> :Bdelete<CR>

" Find
nnoremap // :noh<CR>

" NvimTree 
nnoremap <C-b> :NvimTreeToggle<CR>

" Split Navigation Commands
nnoremap <A-l> <C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-v> :vsplit<CR>

" Navigation commands
nnoremap <C-h> :bprevious<CR>
nnoremap <C-l> :bnext<CR>
nnoremap <C-t> :tabnew<CR>
inoremap <C-t> <Esc>:tabnew<CR>

" Terminal
tnoremap <Esc> <C-\><C-n>

