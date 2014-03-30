" ------------------------------
" System cooperation
" ------------------------------

" Use OS's clipboard
set clipboard=unnamed,autoselect

" Swap
set nobackup
set noswapfile
"set directory=/tmp

" Encoding
set fileencodings=iso-2022-jp,utf-8,cp932,euc-jp,default,latin

" Search
set ignorecase "検索文字列が小文字の場合は大文字小文字を区別なく検索する
set smartcase "検索文字列に大文字が含まれている場合は区別して検索する
set wrapscan "検索時に最後まで行ったら最初に戻る
set nohlsearch "検索結果文字列の非ハイライト表示
set incsearch "インクリメンタルサーチ

" Indent
set smartindent "オートインデント
"set expandtab "タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース
autocmd BufWritePre * :%s/\s\+$//ge "Delete end spaces
"autocmd BufWritePre * :%s/\t/  /ge "Replace tab by spaces
