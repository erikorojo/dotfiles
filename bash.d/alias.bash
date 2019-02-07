# Filename:    alias.bash
# Description: Useful aliases for a smooth CLI experience.
#

#
# Coreutils, GNU stuff for Mac, Etc
#
if [[ `uname -s` == 'Darwin' ]]; then
    alias alg='alias | ggrep '
    alias cat='gcat'
    alias chmod='gchmod'
    alias chown='gchown'
    alias chroot='gchroot'
    alias cp='gcp'
    alias cut='gcut'
    alias echo='gecho'
    alias find='gfind'
    alias grep='ggrep --color'
    alias head='ghead'
    alias kill='gkill'
    alias l='gls -lA --color --group-directories-first'
    alias lg='gls -lA --color --group-directories-first | ggrep'
    alias ln='gln'
    alias ls='gls'
    alias mv='gmv'
    alias pwd='gpwd'
    alias shred='gshred'
    alias sort='gsort'
    alias sum='gsum'
    alias touch='gtouch'
    alias uniq='guniq'
    alias xargs='gxargs'
else
    alias alg='alias | grep --color'
    alias l='ls -lA --color --group-directories-first'
    alias lg='ls -lA --color --group-directories-first | grep --color'
fi

#
# Git
#
alias g='git'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gch='git checkout'
alias gchp='git checkout -p'
alias gcm='git commit -m'
alias gd='git diff'
alias gdc='git diff --cached'
alias gdn='git diff --name-only'
alias gl='git log'
alias gla='git log --author='
alias glf='git log --follow --'
alias groot='cd $(git rev-parse --show-toplevel)'
alias gs='git status'
alias gsh='git show'
alias gsroot='cd $(git rev-parse --show-superproject-working-tree)'
alias gst='git stash'

# Gist
if [[ `uname -s` == 'Linux' ]]; then
    alias gist='gist-paste'
    alias gistp='gist-paste -p'
fi

#
# Emacs
#
if [[ `uname -s` == 'Darwin' ]]; then
    alias em='open -a Emacs'
    alias emacs='open -a Emacs'
fi

#
# Tmux
#
alias tx='tmux'
alias txa='tmux attach -t'
alias txka='tmux kill-server'
alias txks='tmux kill-session -t'
alias txls='tmux ls'
alias txn='tmux new -s'

#
# Etc
#
alias u='cd ..'
