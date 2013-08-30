" Common Vim setting
source ~/.vim/vimprefs/System.vimrc

" NeoBundle
source ~/.vim/vimprefs/NeoBundle.vimrc

" Plugin specific settings
source ~/.vim/vimprefs/Plugins.vimrc

" Visual
source ~/.vim/vimprefs/Visual.vimrc

" Keybindings
source ~/.vim/vimprefs/Keybinding.vimrc

" Automation
source ~/.vim/vimprefs/Automation.vimrc

" MacVimの設定
if has('gui_macvim')
	source ~/.vim/vimprefs/MacVim.vimrc
endif
