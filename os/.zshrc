setopt  extendedglob
bindkey -e
ZPLUG_HOME=${HOME}/.zplug
if [[ ! -d $ZPLUG_HOME ]];then
    git clone https://github.com/zplug/zplug $ZPLUG_HOME
fi

source $ZPLUG_HOME/init.zsh

zplug "rupa/z", use:z.sh
zplug "modules/utility", from:prezto
#zplug "plugins/git", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", defer:2
zplug "modules/history-substring-search", defer:3, from:prezto
zplug "modules/git", from:prezto
zplug "modules/prompt", defer:3, from:prezto

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi
zplug load


	 # plugins
	# zgen oh-my-zsh plugins/git
	# zgen oh-my-zsh plugins/sudo
	# zgen oh-my-zsh plugins/command-not-found
	# zgen load zsh-users/zsh-syntax-highlighting

	#prezto options
	# zgen prezto editor key-bindings 'emacs'
	# zgen prezto prompt theme 'sorin'

	# zgen prezto
	# zgen prezto git
	# zgen prezto command-not-found
	# zgen prezto syntax-highlighting
	# zgen load /path/to/super-secret-private-plugin

	# bulk load
	# zgen loadall <<EOPLUGINS
	# zsh-users/zsh-history-substring-search
	# /path/to/local/plugin
# EOPLUGINS
	# ^ can't indent this EOPLUGINS

	# completions

	# theme
	# zgen oh-my-zsh themes/arrow

	# save all to init script




# zstyle ':completion:*' completer _expand _complete _ignored
# zstyle ':completion:*' list-colors ''
# zstyle ':completion:*' matcher-list 'r:|[._-/]=* r:|=*'
# zstyle ':completion:*' original true
# zstyle :compinstall filename '/home/abai/.zshrc'

# autoload -Uz compinit
# compinit
# End of lines added by compinstall
#
# autoload -U promptinit
# promptinit
# prompt walters

# export WORKON_HOME=$HOME/.virtualenvs
# export PROJECT_HOME=$HOME/Devel

export EDITOR=vim
# PROMPT="(%2~%)%m%%"
# alias session

alias grep='grep --color=auto'
alias grep='grep --color=auto'
alias egrep='egrep -G'
alias ls='ls -G'
alias ll='ls -G -alF'
alias la='ls -G -A'
alias l='ls  -G -CF'

# alias -s py=vi       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias sus='sudo systemctl suspend'
alias emacs='LANG=zh_CN.UTF-8 emacs'
alias -g ee='emacsclient -c'


#关于历史纪录的配置 {{{
#历史纪录条目数量
export HISTSIZE=10000
#注销后保存的历史纪录条目数量
export SAVEHIST=10000
#历史纪录文件
export HISTFILE=~/.zhistory
#以附加的方式写入历史纪录
setopt INC_APPEND_HISTORY
#如果连续输入的命令相同，历史纪录中只保留一个
setopt HIST_IGNORE_DUPS     
#为历史纪录中的命令添加时间戳     
setopt EXTENDED_HISTORY     
 
#相同的历史路径只保留一个
setopt PUSHD_IGNORE_DUPS
 
#在命令前添加空格，不将此命令添加到纪录文件中
#setopt HIST_IGNORE_SPACE     
#}}}


#路径补全
# zstyle ':completion:*' expand 'yes'
# zstyle ':completion:*' squeeze-shlashes 'yes'
# zstyle ':completion::complete:*' '\\'


# cd ~ 补全顺序
# zstyle ':completion:*:-tilde-:*' group-order 'named-directories' 'path-directories' 'users' 'expand'
#}}}

# export PATH=$PATH:/usr/local/go/bin
# export GOROOT=/usr/local/go
# export PATH=$PATH:$GOPATH/bin
export GOPATH=$HOME/gohome
prompt sorin


#输入法
export GTK_IM_MODULE=fcitx
export GTK3_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS="@im=fcitx"
export TERM=xterm-256color
export CCACHE_DIR=/var/cache/ccache



[[ -z $DISPLAY && $XDG_VTNR -le 1 && -z $SSH_CLIENT ]] && exec startx
