" ------------------------------
" Plugin settings
" ------------------------------

"Easymotion --------------------
let g:EasyMotion_leader_key = ',,'

"Unite -------------------------
let g:unite_enable_start_insert=1
let g:unite_source_history_yank_enable =1
let g:unite_source_file_mru_limit = 500
let g:unite_source_rec_max_cache_files = 5000

" Double ESC to exit Unite
au FileType unite nnoremap <silent> <buffer> <ESC><ESC> :q<CR>
au FileType unite inoremap <silent> <buffer> <ESC><ESC> <ESC>:q<CR>

" Command + P to open everything
nnoremap <silent> <D-p> :<C-u>call <SID>unite_project()<CR>
nnoremap <silent> <Leader>p :<C-u>call <SID>unite_project()<CR>

" Command + R to open outline
nnoremap <silent> <D-r> :<C-u>Unite outline<CR>
nnoremap <silent> <Leader>r :<C-u>Unite outline<CR>

" Command + W to close buffer
nnoremap <silent> <D-w> :bd<CR>
nnoremap <silent> <Leader>w :bd<CR>

" Command + S to save buffer
imap <silent> <D-s> <ESC><ESC><CR>:w<CR>
nnoremap <silent> <D-s> :w<CR>

" Search settings
"call unite#filters#matcher_default#use(['matcher_fuzzy'])
call unite#filters#sorter_default#use(['sorter_rank'])
call unite#set_profile('files', 'smartcase', 1)
call unite#custom#source('file_rec/async', 'ignore_pattern', '\(meta\|png\|gif\|jpeg\|jpg\)$')

function! s:unite_project(...)
	let opts = (a:0 ? join(a:000,  ' ') : '')
	execute 'Unite' opts 'file_mru file_rec/async:!'
endfunction

"vim-autoformat  ---------------
let g:formatprg_args_cs = "--mode=cs
			\ --style=attach
			\ --add-brackets
			\ --close-templates
			\ --indent=tab=4
			\ --max-code-length=100
			\ "
let g:formatprg_args_cpp = "--mode=cpp
			\ --style=ansi
			\ --add-brackets
			\ --indent=tab=4
			\ --max-code-length=100
			\ --pad-header
			\ --align-pointer=type
			\ --close-templates
			\ "

function! AutoformatBOM()
	let l:pos = getpos(".")
	if &bomb == 0
		Autoformat
	else
		set nobomb
		Autoformat
		set bomb
	endif
	call setpos(".", pos)
endfunction
command! AutoformatBOM call AutoformatBOM()
autocmd FileType c,cpp,cs imap <silent> <D-s> <ESC><ESC>:<C-u>call AutoformatBOM()<CR>:w<CR>
autocmd FileType c,cpp,cs nnoremap <silent> <D-s> :<C-u>call AutoformatBOM()<CR>:w<CR>

"Omnisharp ---------------------
filetype plugin on
let g:OmniSharp_host = "http://localhost:2000"
"Set the type lookup function to use the preview window instead of the status line
let g:OmniSharp_typeLookupInPreview = 1
set noshowmatch
autocmd FileType cs setlocal omnifunc=OmniSharp#Complete
autocmd FileType cpp setlocal omnifunc=OmniSharp#Complete


"Neocomplete -------------------
"Note: This option must set it in .vimrc(_vimrc).  NOT IN .gvimrc(_gvimrc)!
" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
" Use neocomplete.
let g:neocomplete#enable_at_startup = 1
" Use smartcase.
let g:neocomplete#enable_smart_case = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Define dictionary.
let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
    \ 'vimshell' : $HOME.'/.vimshell_hist',
    \ 'scheme' : $HOME.'/.gosh_completions'
\ }

" Define keyword.
if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
	return neocomplete#smart_close_popup() . "\<CR>"
	" For no inserting <CR> key.
	"return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
	let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.default = '\h\w*'
let g:neocomplete#sources#omni#input_patterns.php = '[^.  \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.cs = '\w\|\.'
