" ------------------------------
" Keybindings
" ------------------------------

" Set <Leader> key to comma
let mapleader = ","

" ;でコマンド入力( ;と:を入れ替)
noremap ; :
noremap : ;

" g to back to previous edited line
noremap g<CR> g;

" enter to save current buffer
nnoremap <CR> :<C-u>w<CR>
