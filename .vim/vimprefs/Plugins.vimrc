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
"nnoremap <silent> <C-p> :<C-u>call <SID>unite_project('-start-insert')<CR>

function! s:unite_project(...)
	let opts = (a:0 ? join(a:000,  ' ') : '')
	let dir = unite#util#path2project_directory(expand('%'))
	execute 'Unite' opts 'file_rec:' . dir
endfunction
