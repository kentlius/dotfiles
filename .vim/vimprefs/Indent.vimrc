" ------------------------------
" Indent
" ------------------------------
"cleaning source
set smartindent "オートインデント
"set expandtab "タブの代わりに空白文字挿入
set ts=4 sw=4 sts=0 "タブは半角4文字分のスペース
autocmd BufWritePre * :%s/\s\+$//ge "Delete end spaces
"autocmd BufWritePre * :%s/\t/  /ge "Replace tab to spaces
