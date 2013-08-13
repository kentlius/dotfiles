" ------------------------------
" その他・あんまり多くない設定
" ------------------------------

" ファイルを開いた際に、前回終了時の行で起動
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

" ;でコマンド入力( ;と:を入れ替)
noremap ; :
noremap : ;

" CTRL-hjklでウィンドウ移動
nnoremap <C-j> ;<C-w>j
nnoremap <C-k> ;<C-k>j
nnoremap <C-l> ;<C-l>j
nnoremap <C-h> ;<C-h>j

" Set <Leader> key to comma
let mapleader = ","
