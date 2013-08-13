" ------------------------------
" System cooperation
" ------------------------------
set clipboard=unnamed,autoselect

" type <space>-c-d to set current directory to current document directory
command! -nargs=? -complete=dir -bang CD  call s:ChangeCurrentDir('<args>', '<bang>')
function! s:ChangeCurrentDir(directory, bang)
    if a:directory == ''
        lcd %:p:h
    else
        execute 'lcd' . a:directory
    endif

    if a:bang == ''
        pwd
    endif
endfunction
nnoremap <silent> <Space>cd :<C-u>CD<CR>           " Change current directory.

"Swap
set nobackup
set swapfile
set directory=/tmp

"Encoding
set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
