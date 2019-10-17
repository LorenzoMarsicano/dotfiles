set -xg EDITOR nvim

#cat ~/.cache/wal/sequences &  

#---------------------------------- EXPORT-----------------------------------------------------------------
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/Code/go/bin:$PATH:$HOME/Scripts"

export LC_COLLATE="C"

export NNN_TMPFILE=/tmp/nnn
export NNN_COPIER=~/.config/nnn/copier.sh
export NNN_TRASH=1
export NNN_OPS_PROG=1
export PURE_PROMPT_SYMBOL='»'
export PURE_GIT_DOWN_ARROW='↓'
export PURE_GIT_UP_ARROW='↑'

export WEECHAT_HOME='~/.config/weechat'

#---------------------------------- ALIAS ------------------------------------------------------------------
alias ls="ls -al --color"
alias l="ls"
alias n="nnn"
alias cal="cal -m"
alias vim="nvim"
alias v="nvim"
alias :q="exit"
alias :x="exit"

#------------------------------------------------------------------------------------------------------------
set -g -x GOPATH /home/lorenzo/Code/go/
if test -f /home/lorenzo/.autojump/share/autojump/autojump.fish; . /home/lorenzo/.autojump/share/autojump/autojump.fish; end
