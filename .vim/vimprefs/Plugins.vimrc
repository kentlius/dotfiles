" ------------------------------
" Plugin settings
" ------------------------------

"Easymotion --------------------
let g:EasyMotion_leader_key = ',,'

"Omnisharp ---------------------
filetype plugin on
let g:OmniSharp_host = "http://localhost:2000"
let g:OmniSharp_typeLookupInPreview = 1
set noshowmatch

"Unite -------------------------
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 200
let g:unite_source_rec_max_cache_files = 15000

" Double ESC to exit Unite
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" Command + P to open everything
nnoremap <silent> <D-p> :<C-u>call <SID>unite_project()<CR>
nnoremap <silent> <Leader>p :<C-u>call <SID>unite_project()<CR>
nnoremap <silent> <D-r> :<C-u>Unite outline<CR>
nnoremap <silent> <Leader>r :<C-u>Unite outline<CR>

" Search settings
call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('file_rec', 'ignore_pattern', '\.meta$')

function! s:unite_project(...)
	let opts = (a:0 ? join(a:000,  ' ') : '')
	execute 'Unite' opts 'buffer file_rec:! file_mru'
endfunction
