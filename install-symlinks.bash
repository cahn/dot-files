#!/bin/zsh

# prepare the plugins
git submodule init
git submodule update

#ln -sh ${PWD}/.profile ~/.profile
#ln -sh ${PWD}/.bashrc ~/.bashrc
#ln -sh ${PWD}/.bash_profile ~/.bash_profile
ln -sh ${PWD}/.zprofile ~/.zprofile
ln -sh ${PWD}/.zshrc ~/.zshrc

# /usr/share/git-core/git-completion.bash
#ln -sh ${PWD}/git-completion.bash ~/.git-completion.bash
# /usr/share/git-core/git-completion.zsh
# depends on the bash file above but has a different installation
#
ln -sh ${PWD}/.gitconfig ~/.gitconfig
ln -sh ${PWD}/.gitignore ~/.gitignore

ln -sh ${PWD}/.vimrc ~/.vimrc

mkdir ~/.vim

# install clang_complete
ln -sh ${PWD}/clang_complete/bin ~/.vim/bin
ln -sh ${PWD}/clang_complete/doc ~/.vim/doc
ln -sh ${PWD}/clang_complete/plugin ~/.vim/plugin

# install vim-lucius
ln -sh ${PWD}/vim-lucius ~/.vim/plugin/vim-lucius

# install bundle directory
ln -sh ${PWD}/vim_plugins ~/.vim/bundle
ln -sh /dev/null ~/.cache/ctrlp/mru/cache.txt

#mkdir ~/.ssh
#touch ~/.ssh/authorized_keys
#sudo chown root ~/.ssh/*.pub
