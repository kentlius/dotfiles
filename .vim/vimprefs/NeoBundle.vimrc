" ------------------------------
" Plugin management
" ------------------------------

"NeoBundle
" Note: Skip initialization for vim-tiny or vim-small.
if 0 | endif

if has('vim_starting')
	if &compatible
		set nocompatible               " Be iMproved
	endif

	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Internal plugins
NeoBundle 'Shougo/vimproc', {
	\ 'build' : {
		\ 'windows' : 'make -f make_mingw32.mak',
		\ 'cygwin' : 'make -f make_cygwin.mak',
		\ 'mac' : 'make -f make_mac.mak',
		\ 'unix' : 'make -f make_unix.mak',
	\ },
\ }
NeoBundle 'Shougo/neocomplete.vim'
NeoBundle 'Shougo/neomru.vim'
"NeoBundle 'Shougo/neosnippet'

NeoBundle "Shougo/unite.vim", {
      \ "autoload": {
      \   "commands": ["Unite", "UniteWithBufferDir"]
      \ }
\ }
NeoBundleLazy 'Shougo/unite-outline', {
      \ "autoload": {
      \   "unite_sources": ["outline"],
      \ }
\ }
NeoBundleLazy 'Shougo/neomru.vim', {
	\ "autoload": {
	\ 	"unite_sources": ["file_mru"],
	\ }
\}
"NeoBundleLazy 'basyura/unite-converter-file-directory', {
"    \ 'autoload': {
"    \ 	'unite_sources': ["file_mru"],
"    \ }
"\}
"NeoBundleLazy 'basyura/unite-matchers', {
"    \ 'autoload': {
"    \ 	'unite_sources': ["file_mru"],
"    \ }
"\}
NeoBundle "thinca/vim-unite-history", {
	\ "autoload": {
	\ 	"unite_sources": ["history/command"],
	\ }
\}

" Clients
NeoBundle 'Shougo/vimshell'
"NeoBundle 'kakkyz81/evervim'

" Language specific
"NeoBundle 'osyo-manga/vim-reunions'
NeoBundleLazy 'osyo-manga/vim-marching', {
	\ 'autoload': {'filetypes': ['c', 'cpp', 'objc']}
\ }
"NeoBundleLazy 'nosami/Omnisharp',  {
"    \ 'autoload': {'filetypes': ['cs']},
"    \ 'build': {
"        \ 'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
"        \ 'mac': 'xbuild server/OmniSharp.sln',
"        \ 'unix': 'xbuild server/OmniSharp.sln',
"    \ }
"\ }
NeoBundleLazy 'jelera/vim-javascript-syntax', {
	\ 'autoload': {'filetypes': ['js']}
\ }
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
NeoBundleLazy 'kchmck/vim-coffee-script', {
	\ 'autoload': {'filetypes': ['coffee']}
\ }
"NeoBundle 'thinca/vim-quickrun'                     "run many program source files in vim with '\r' kwy

" Utility
NeoBundle 'vim-scripts/sudo.vim'					"Usage -> vim sudo:~/file

" Visual
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'altercation/vim-colors-solarized'
"NeoBundle 'ShowMarks7'								"Show marks at left
"NeoBundle 'number-marks'							"Mark with array

" Editing
NeoBundle 'EnhCommentify.vim'                       " '<Leader>x' to comment out current selection
NeoBundle 'Lokaltog/vim-easymotion'					"Move to specific word
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'vim-scripts/VisIncr'						"Increment Numbers

call neobundle#end()

" Required:
filetype plugin indent on     						" required!

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
