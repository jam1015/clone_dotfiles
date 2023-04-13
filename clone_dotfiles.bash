#/bin/bash

# clones my dotfiles in a bare repo.  cd to home directory after and run `dots checkout` to actually copy the dotfiles
# use the `source` command on this file so that the alias is applied to the shell we are actually using
REPO="git@github.com:jam1015/dotfiles"
cd $HOME
git clone --bare $REPO
alias dots='/usr/bin/git --git-dir=$HOME/dotfiles.git --work-tree=$HOME'
/usr/bin/git --git-dir=$HOME/dotfiles.git --work-tree=$HOME config --local status.showUntrackedFiles no
#touch $HOME/dotfiles.git/info/sparse-checkout
#echo -e "/*\nREADME.md" > $HOME/dotfiles.git/info/sparse-checkout
#/usr/bin/git --git-dir=$HOME/dotfiles.git --work-tree=$HOME config --local core.sparsecheckout true
cd -
#dots checkout
