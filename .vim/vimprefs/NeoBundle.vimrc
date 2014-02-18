" ------------------------------
" Plugin management
" ------------------------------
"NeoBundle
set nocompatible               " be iMproved
filetype off                   " required!
filetype plugin indent off     " required!

if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand('~/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'	" Let NeoBundle manage NeoBundle

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
"NeoBundle 'Shougo/neosnippet'

NeoBundleLazy "Shougo/unite.vim", {
      \ "autoload": {
      \   "commands": ["Unite", "UniteWithBufferDir"]
      \ }
\ }
NeoBundleLazy 'h1mesuke/unite-outline', {
      \ "autoload": {
      \   "unite_sources": ["outline"],
      \ }
\ }
NeoBundleLazy 'basyura/unite-converter-file-directory', {
	\ "autoload": {
	\ 	"unite_sources": ["file_mru"],
	\ }
\}
NeoBundleLazy 'basyura/unite-matchers', {
	\ "autoload": {
	\ 	"unite_sources": ["file_mru"],
	\ }
\}

" Clients
"NeoBundle 'Shougo/vimshell'

" Language specific
NeoBundleLazy 'nosami/Omnisharp',  {
	\ 'autoload': {'filetypes': ['cs']},
	\ 'build': {
		\ 'windows': 'MSBuild.exe server/OmniSharp.sln /p:Platform="Any CPU"',
		\ 'mac': 'xbuild server/OmniSharp.sln',
		\ 'unix': 'xbuild server/OmniSharp.sln',
	\ }
\ }
NeoBundleLazy 'jelera/vim-javascript-syntax', {
	\ 'autoload': {'filetypes': ['js']}
\ }
autocmd BufNewFile,BufRead *.coffee set filetype=coffee
NeoBundleLazy 'kchmck/vim-coffee-script', {
	\ 'autoload': {'filetypes': ['coffee']}
\ }
NeoBundle 'thinca/vim-quickrun'                     "run many program source files in vim with '\r' kwy

" Utility
NeoBundle 'vim-scripts/sudo.vim'					"Usage -> vim sudo:~/file

" Visual
NeoBundle 'Lokaltog/vim-powerline'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'ShowMarks7'								"Show marks at left
NeoBundle 'number-marks'							"Mark with array

" Editing
NeoBundle 'EnhCommentify.vim'                       " '<Leader>x' to comment out current selection
NeoBundle 'Lokaltog/vim-easymotion'					"Move to specific word
NeoBundle 'Chiel92/vim-autoformat'

filetype plugin indent on     						" required!
