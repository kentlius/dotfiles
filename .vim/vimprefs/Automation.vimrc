" ------------------------------
" Automation
" ------------------------------

" $B%U%!%$%k$r3+$$$?:]$K!"A02s=*N;;~$N9T$G5/F0(B
autocmd BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g`\"" | endif

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
