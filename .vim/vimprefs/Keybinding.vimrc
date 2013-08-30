" ------------------------------
" Keybindings
" ------------------------------

" Set <Leader> key to comma
let mapleader = ","

" ;でコマンド入力( ;と:を入れ替)
noremap ; :
noremap : ;

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> ;<C-k>j
nnoremap <C-l> ;<C-l>j
nnoremap <C-h> ;<C-h>j

" g to back to previous edited line
noremap g<CR> g;

" enter to save current buffer
nnoremap <CR> :<C-u>w<CR>
