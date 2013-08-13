" システム系の設定を読み込む
source ~/.vim/vimprefs/System.vimrc

" NeoBundle関連の設定を読み込む
source ~/.vim/vimprefs/NeoBundle.vimrc

" プラグインの設定をする
source ~/.vim/vimprefs/Plugins.vimrc

" 見た目に関する設定
source ~/.vim/vimprefs/Visual.vimrc

" 検索に関する設定
source ~/.vim/vimprefs/Search.vimrc

" 補完に関する設定
source ~/.vim/vimprefs/AutoComplete.vimrc

" インデントの設定
source ~/.vim/vimprefs/Indent.vimrc

" その他の設定
source ~/.vim/vimprefs/Misc.vimrc

" マクロ設定
source ~/.vim/vimprefs/Macro.vimrc

" MacVimの設定
if has('gui_macvim')
	source ~/.vim/vimprefs/MacVim.vimrc
endif
