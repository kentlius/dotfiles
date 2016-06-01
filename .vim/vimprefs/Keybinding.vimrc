" ------------------------------
" Keybindings
" ------------------------------

" Set <Leader> key to comma
let mapleader = ","

" ;でコマンド入力( ;と:を入れ替)
noremap ; :
noremap : ;

" enter to save current buffer
nnoremap <Space> :<C-u>w<CR>

" Ctrl + Tab to switch through tabs
noremap <C-Tab> :tabnext<CR>
noremap <C-S-Tab> :tabprev<CR>

" Command + P to open everything
nnoremap <silent> <D-p> :<C-u>UniteProject<CR>
nnoremap <silent> <Leader>p :<C-u>UniteProject<CR>

" Command + R to open outline
nnoremap <silent> <D-r> :<C-u>Unite outline<CR>
nnoremap <silent> <Leader>r :<C-u>Unite outline<CR>

" Command + W to close buffer
nnoremap <silent> <D-w> :bd<CR>
nnoremap <silent> <Leader>w :bd<CR>

" Command + D to search with Dash
nnoremap <silent> <D-d> :Dash!<CR>
nnoremap <silent> <Leader>d :Dash!<CR>

