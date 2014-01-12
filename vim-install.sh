#!/bin/bash

set -x

VIMDIR="$HOME/.vim"

sudo apt-get install -y vim-gnome vim-doc ttf-dejavu exuberant-ctags curl
mkdir -p $VIMDIR/autoload
curl -Sso $VIMDIR/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
git clone https://github.com/mgracik/vim-bundle.git $VIMDIR/bundle
{ cd $VIMDIR/bundle && git submodule update --init --recursive; }
curl -Sso $HOME/.vimrc https://raw.github.com/mgracik/vim-config/master/vimrc
