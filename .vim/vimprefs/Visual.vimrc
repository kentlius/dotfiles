" ------------------------------
" Visual
" ------------------------------
set number
set showmode
set title
set showcmd
set laststatus=2
set cursorline cursorcolumn
set scrolloff=10
set splitbelow

"colorscheme
syntax enable
set background=dark
"let g:solarized_contrast = "high"
"let g:solarized_visibility = "high"
colorscheme solarized

"Vim-powerline
"let g:Powerline_symbols = 'fancy'
set t_Co=256

" ShowMarks
hi SignColumn ctermfg=white ctermbg=black cterm=none
hi default ShowMarksHLl ctermfg=red ctermbg=black cterm=none
hi default ShowMarksHLu ctermfg=red ctermbg=black cterm=none
hi default ShowMarksHLo ctermfg=red ctermbg=black cterm=none
hi default ShowMarksHLm ctermfg=red ctermbg=black cterm=none
let g:showmarks_include="abcdefghijkloqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
