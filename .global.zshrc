# Re-compile .zshrc automatically
if [ ~/.zshrc -nt ~/.zshrc.zwc ]; then
	zcompile ~/.zshrc
fi

# Use Japanese language
export LANG=ja_JP.UTF-8

# Complete command by ^P and ^N
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# Show ls after cd
function chpwd() {
	emulate -L zsh
	ls -a
}

fi

# Search file
if which mdfind >/dev/null 2>&1 ; then
    # Mac
	alias spot='mdfind -onlyin .'
fi
