alias rm='rm -i'
alias ls="ls -G -A -h"
alias vim="vim -i NONE"
alias man="man -M $MANPATH:/opt/local/man"
alias symbolicatecrash="/Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/Library/PrivateFrameworks/DTDeviceKit.framework/Versions/A/Resources/symbolicatecrash"
alias git-graph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%H%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"

set -o vi

# Linking the bash_history file to null just in case
ln -sf /dev/null ~/.bash_history
ln -sf /dev/null ~/.lesshst
ln -sf /dev/null ~/.gdb_history
ln -sf /dev/null ~/.gnuplot_history

test -r /sw/bin/init.sh && . /sw/bin/init.sh
source ~/.bashrc
source ~/.profile
source ~/.git-completion.bash

/bin/rm -f -r ~/Library/Preferences/Macromedia/Flash\ Player/macromedia.com/support/flashplayer/sys/*
