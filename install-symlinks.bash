#!/bin/bash

# prepare the plugins
git submodule init
git submodule update

ln -s ${PWD}/.profile ~/.profile
ln -s ${PWD}/.bashrc ~/.bashrc
ln -s ${PWD}/.bash_profile ~/.bash_profile

ln -s ${PWD}/.git-completion.bash ~/.git-completion.bash
ln -s ${PWD}/.gitconfig ~/.gitconfig
ln -s ${PWD}/.gitignore ~/.gitignore

ln -s ${PWD}/.vimrc ~/.vimrc

mkdir ~/.vim

# install clang_complete
ln -s ${PWD}/clang_complete/bin ~/.vim/bin
ln -s ${PWD}/clang_complete/doc ~/.vim/doc
ln -s ${PWD}/clang_complete/plugin ~/.vim/plugin

# install bundle directory
ln -s ${PWD}/vim_plugins ~/.vim/bundle
