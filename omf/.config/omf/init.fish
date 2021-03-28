set -xg EDITOR nvim

#cat ~/.cache/wal/sequences &  

#---------------------------------- EXPORT-----------------------------------------------------------------
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$HOME/Code/go/bin:$PATH:$HOME/Scripts:$HOME/Code/Zerynth/dev-utils/gitscripts:$HOME/.gem/ruby/2.7.0/bin:$HOME/.local/bin:$HOME/Code/Lorenzo/esp/xtensa-esp32-elf/bin"

export LC_COLLATE="C"

export NNN_TMPFILE=/tmp/nnn
export NNN_COPIER=~/.config/nnn/copier.sh
export NNN_TRASH=1
export NNN_OPS_PROG=1
export PURE_PROMPT_SYMBOL='»'
export PURE_GIT_DOWN_ARROW='↓'
export PURE_GIT_UP_ARROW='↑'

export WEECHAT_HOME='~/.config/weechat'
export TERM=termite
export IDF_PATH=~/esp/esp-idf

#---------------------------------- ALIAS ------------------------------------------------------------------
alias n="nnn"
alias vim="nvim"
alias v="nvim"

#------------------------------------------------------------------------------------------------------------
set -g -x GOPATH /home/lorenzo/Code/go/
if test -f /home/lorenzo/.autojump/share/autojump/autojump.fish; . /home/lorenzo/.autojump/share/autojump/autojump.fish; end

function fish_mode_prompt
end
