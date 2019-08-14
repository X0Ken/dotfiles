#!/bin/bash

# tmux
cp ./tmux.conf ~/.tmux.conf

# vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp ./vimrc ~/.vimrc
vim +PluginInstall +qall

echo "dont forget to install / update YoucompleteMe, Leaderf"

