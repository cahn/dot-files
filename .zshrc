set -o PROMPT_SUBST
export CLICOLOR=1

# load $fg
autoload colors
colors

export EDITOR="/usr/bin/vim -i NONE"

# build prompt
local return_code="%(?..%{$fg_bold[red]%}%? ↵%{$reset_color%})"
local prefix="%{$fg_bold[green]%}<%{$reset_color%}%M%{$fg[green]%}:%{$reset_color%}%n%{$fg_bold[green]%}>%{$reset_color%}"
local pwd="%{$fg[cyan]%}%~%{$reset_color%}"
local suffix="%{$fg_bold[red]%}>%{$reset_color%}"
local query_suffix="%{$fg_bold[red]%}#?%{$reset_color%}"
local trace_suffix="%{$fg_bold[red]%}+%{$reset_color%}"

PS1='${prefix} ${pwd} ${suffix} '
PS2='${suffix} '
PS3='${query_suffix} '
PS4='${trace_suffix} '
RPS1='${return_code}'

# setup aliases
alias rm='rm -i'
alias ls="ls -G -A -h"
alias vim="vim -i NONE"
alias man="man -M $MANPATH:/opt/local/man"
alias git-graph="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%H%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)'"
alias git-ff-merge="git merge --ff-only \@\{u\}"

# link to null
ln -sf /dev/null ~/.zsh_history
ln -sf /dev/null ~/.bash_history
ln -sf /dev/null ~/.lesshst
ln -sf /dev/null ~/.gdb_history
ln -sf /dev/null ~/.gnuplot_history
