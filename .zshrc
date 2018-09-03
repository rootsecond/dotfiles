# Created by newuser for 5.0.7
setopt AUTO_PUSHD
setopt AUTO_CD
setopt IGNORE_EOF
setopt NO_FLOW_CONTROL
setopt NO_BEEP
#Title
precmd() {
[[ -t 1 ]] || return
case $TERM in
*xterm*|rxvt|(dt|k|E)term)
print -Pn "\e]2;[%~]\a"
;;
# screen)
# #print -Pn "\e]0;[%n@%m %~] [%l]\a"
# print -Pn "\e]0;[%n@%m %~]\a"
# ;;
esac
}
export PATH=~/bin:$PATH
export PATH=/usr/local/sbin:$PATH # for Homebrew
export PATH=/usr/local/bin:$PATH  # for Homebrew
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/shims:$PATH"

#######################################
# Color
#######################################
# 色の設定
export LSCOLORS=Exfxcxdxbxegedabagacad
# 補完時の色の設定
export LS_COLORS='di=01;34:ln=01;35:so=01;32:ex=01;31:bd=46;34:cd=43;34:su=41;30:sg=46;30:tw=42;30:ow=43;30'
# ZLS_COLORSとは？
export ZLS_COLORS=$LS_COLORS
# lsコマンド時、自動で色がつく(ls -Gのようなもの？)
export CLICOLOR=true
# 補完候補に色を付ける
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}

#ヒストリーサイズ設定
HISTFILE=$HOME/.zsh_history
HISTSIZE=1000000
SAVEHIST=1000000
PATH=${PATH}:~/bin

#ヒストリの一覧を読みやすい形に変更
HISTTIMEFORMAT="[%Y/%M/%D %H:%M:%S] "

#補完リストが多いときに尋ねない
LISTMAX=1000

#ビープ音を消す
setopt nolistbeep 

# rbenvの設定
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

function gem(){
  $HOME/.rbenv/shims/gem $*
  if [ "$1" = "install" ] || [ "$1" = "i" ] || [ "$1" = "uninstall" ] || [ "$1" = "uni" ]
  then
    rbenv rehash
  fi
}

function bundle(){
  $HOME/.rbenv/shims/bundle $*
  if [ "$1" = "install" ] || [ "$1" = "update" ]
  then
    rbenv rehash
  fi
}

export PATH="$HOME/.rbenv/shims:$PATH"

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# for Homebrew php70
export PATH="$(brew --prefix homebrew/php/php70)/bin:$PATH"

export PATH=$PATH:~/.composer/vendor/bin:/usr/local/sbin

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export HUBOT_YAHOO_AMAGUMO_APP_ID="dj0zaiZpPUo1MzVZWWVyOTlLRSZzPWNvbnN1bWVyc2VjcmV0Jng9NDQ-"
