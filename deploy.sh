#!/bin/sh
# vim: tabstop=8 expandtab shiftwidth=2 softtabstop=2

set -e
set -u
set -v
set -x

cd $(dirname $0)
DOTFILES=$(pwd)

CONFIG=$HOME/.config

ln -s -f -n -v $DOTFILES/config/user-dirs.dir       $CONFIG/user-dirs.dir
ln -s -f -n -v $DOTFILES/config/user-dirs.locale    $CONFIG/user-dirs.locale
ln -s -f -n -v $DOTFILES/config/alacritty           $CONFIG/alacritty
[ ! -d $CONFIG/nvim ] && mkdir $CONFIG/nvim
ln -s -f -n -v $DOTFILES/config/nvim/init.vim       $CONFIG/nvim/init.vim
ln -s -f -n -v $DOTFILES/config/nvim/dein.toml      $CONFIG/nvim/dein.toml
ln -s -f -n -v $DOTFILES/config/common-lisp         $CONFIG/common-lisp
ln -s -f -n -v $DOTFILES/ccl-init.lisp              $HOME/.ccl-init.lisp
ln -s -f -n -v $DOTFILES/screenrc                   $HOME/.screenrc
ln -s -f -n -v $DOTFILES/gdbinit                    $HOME/.gdbinit
[ ! -d $HOME/.ssh ] && mkdir $HOME/.ssh
ln -s -f -n -v $DOTFILES/ssh/config                 $HOME/.ssh/config

[ ! -d $HOME/bin ] && mkdir $HOME/bin
ln -s -f -n -v $DOTFILES/bin/*                      $HOME/bin

echo "source $DOTFILES/bashrc.post"       >> $HOME/.bashrc
echo "source $DOTFILES/bash_profile.post" >> $HOME/.bash_profile
