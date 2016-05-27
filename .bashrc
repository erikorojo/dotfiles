# general 
# ------------------------------------------------------------------------------------------
export CLICOLOR=1
export LSCOLORS=GxFxDxBxCxegedabagacad                                  
# order of lscolors from left to right..
# directory = G
# symlink = F
# socket = D
# pipe = B
# executable = C
# B = red 
# C = green
# D = brown
# F = magenta
# G = cyan

# aliases
# ------------------------------------------------------------------------------------------
shopt -s expand_aliases                                                 # vim reads aliases

# general
alias emacs='printf "\xf0\x9f\x98\x90  Dont do that.\n"'                # fun
alias ls='ls -aGh'                                   
alias vi=/usr/local/Cellar/neovim/0.1.4/bin/nvim                        # lazy nvim
alias vim=/usr/local/Cellar/vim/7.4.1847/bin/vim                        # lazy Cellar vim 

# apple scripts 
alias goto_safari='cd; cd .bin/appl/; osascript goto_safari.scpt'

# utility scripts 
# alias easy_comp='cd; cd .bin/appl/; osascript goto_safari.scpt'

# ssh 
alias compute='ssh -Y eric.chung@compute.cse.tamu.edu'                  # compute server
alias linux='ssh -Y eric.chung@linux.cse.tamu.edu'                      # linux server

# git
alias git_shove='./.bin/bash/git_shove.sh'                # quick commit
alias git_up_subs='git submodule foreach git pull origin master'        # update submods
