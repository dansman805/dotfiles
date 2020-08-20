set -x EDITOR "emacsclient -nw"
set -x VISUAL "emacsclient -c"

alias e="$EDITOR"
alias v="$VISUAL"

alias rm='echo "This is not the command you are looking for."; false'

alias screenshot="~/dotfiles/.config/sway/grimshot.sh"

cd ~