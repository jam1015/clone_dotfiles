#/bin/bash

REPO="https://github.com/jam1015/dotfiles"
cd $HOME
git clone --bare $REPO
alias dots='/usr/bin/git --git-dir=$HOME/dotfiles.git --work-tree=$HOME'
dots config --local status.showUntrackedFiles no
#dots checkout
