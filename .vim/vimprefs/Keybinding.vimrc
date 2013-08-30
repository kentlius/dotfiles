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

" Ctrl + Tab to switch through tabs
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>
