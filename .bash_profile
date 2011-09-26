alias rm='rm -i'
alias ls="ls -G -A -h"
alias vim="vim -i NONE"
alias man="man -M $MANPATH:/opt/local/man"

# Linking the bash_history file to null just in case
ln -sf /dev/null ~/.bash_history
ln -sf /dev/null ~/.gdb_history
ln -sf /dev/null ~/.gnuplot_history

test -r /sw/bin/init.sh && . /sw/bin/init.sh
source ~/.bashrc
source ~/.profile
source ~/.git-completion.bash

/bin/rm -r ~/Library/Preferences/Macromedia/Flash\ Player/macromedia.com/support/flashplayer/sys/*

echo Bash Version: $BASH_VERSION
echo REMINDERS:
echo "  sips -s format jpeg --out test.jpg crushedscan.png"
echo "  for f in *htm ; do mv \$f \`basename \$f htm\`html; done"
echo "  openssl enc -aes-256-cbc -a -salt -in file.txt -out file.enc"
echo "  openssl enc -d -aes-256-cbc -a -in file.enc"
echo "  fs_usage -w -f filesys mdworker | egrep \"open\""
echo "  patch -p1 < ~/patch.txt"
echo  

# MacPorts Installer addition on 2009-08-29_at_22:02:32: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
