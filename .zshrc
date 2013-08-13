#####################
# Grobal
#####################

# Vim風キーバインド
 bindkey -v

# フロー制御コマンドを使わない
setopt NO_FLOW_CONTROL

# ヒストリの設定
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
HIST_IGNORE_ALL_DUPS=true

# ヒストリに時刻を記録
setopt extended_history

# コマンドをヒストリから検索
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

# コマンド訂正
setopt correct

# 補完で大文字を保管する
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# 補完機能の強化（コマンドの引数を補完）
autoload -U compinit
compinit

# TAB で順に補完候補を切り替える
setopt auto_menu
# 補完候補のカーソル選択を有効に
zstyle ':completion:*:default' menu select=1

# zaw.zshの読み込み（色々な補完をしてくれるスクリプト）
source ~/.zsh/zaw/zaw.zsh

# ディレクトリ名を入力するだけで移動
setopt auto_cd

# ディレクトリ移動の際に自動でglsしてついでにメニューバーのタイトルを変更する
chpwd() {
    # メニューバーのタイトルを変更
    echo -n "\e]2;$(pwd)\a"

	ls -F
}

# PATH checker
path(){
	PATH_ARRAY=("${(s/:/)PATH}");
	for indPath in $PATH_ARRAY; do
		echo $indPath
	done
}


#####################
# PATH
#####################

[ -f ~/.path.zshrc ] && source ~/.path.zshrc

# Remove duplicated PATH
typeset -U PATH


#####################
# For local settings
#####################

[ -f ~/.local.zshrc ] && source ~/.local.zshrc
