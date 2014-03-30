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
set ignorecase "$B8!:wJ8;zNs$,>.J8;z$N>l9g$OBgJ8;z>.J8;z$r6hJL$J$/8!:w$9$k(B
set smartcase "$B8!:wJ8;zNs$KBgJ8;z$,4^$^$l$F$$$k>l9g$O6hJL$7$F8!:w$9$k(B
set wrapscan "$B8!:w;~$K:G8e$^$G9T$C$?$i:G=i$KLa$k(B
set nohlsearch "$B8!:w7k2LJ8;zNs$NHs%O%$%i%$%HI=<((B
set incsearch "$B%$%s%/%j%a%s%?%k%5!<%A(B

" Indent
set smartindent "$B%*!<%H%$%s%G%s%H(B
"set expandtab "$B%?%V$NBe$o$j$K6uGrJ8;zA^F~(B
set ts=4 sw=4 sts=0 "$B%?%V$OH>3Q(B4$BJ8;zJ,$N%9%Z!<%9(B
autocmd BufWritePre * :%s/\s\+$//ge "Delete end spaces
"autocmd BufWritePre * :%s/\t/  /ge "Replace tab by spaces
