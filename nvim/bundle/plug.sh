#!/bin/bash
# Install and update Pathogen managed Vim plugins.
set -e

# Variables.
INSTALL=""
UPDATE=""
PLUGINS=(https://github.com/erikoelrojo/cueva.git
         https://github.com/hdima/python-syntax
         https://github.com/hynek/vim-python-pep8-indent
         https://github.com/junegunn/fzf.vim
         https://github.com/junegunn/rainbow_parentheses.vim.git
         https://github.com/keith/swift.vim.git
         https://github.com/neomake/neomake
         https://github.com/neovimhaskell/haskell-vim
         https://github.com/octol/vim-cpp-enhanced-highlight
         https://github.com/pangloss/vim-javascript
         https://github.com/sheerun/vim-polyglot.git
         https://github.com/tpope/vim-fugitive
         https://github.com/tpope/vim-surround
         https://github.com/vim-airline/vim-airline.git
         https://github.com/vim-scripts/SearchComplete)

# Parameters.
if [ "$1" == "" ];
then
    echo "Error. Command requires arguments!"
fi

if [ "$1" == "install" ];
then
    echo "Installing plugins."
    for i in "${PLUGINS[@]}"
    do
        git clone $i
    done
fi

if [ "$1" == "update" ];
then
    echo "Updating plugins."
    for REPO in `ls | grep -v plug.sh`
    do
        (cd "$REPO"; git pull);
    done
fi
