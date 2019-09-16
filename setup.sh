#!/bin/bash

# tmux
yum -y install  https://centos7.iuscommunity.org/ius-release.rpm
yum install -y tmux2u
cp ./tmux.conf ~/.tmux.conf

# fonts
#yum install fontconfig -y
#git clone git@github.com:powerline/fonts.git --depth 1
#(cd fontd && ./install.sh)

# repo
rpm -Uvh http://mirror.ghettoforge.org/distributions/gf/gf-release-latest.gf.el7.noarch.rpm

# update vim
yum -y --enablerepo=gf-plus install vim-enhanced  vim-minimal git ctags gcc python-devel
# install vim plug
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ./vimrc ~/.vimrc
vim +PlugInstall +qall

echo "dont forget to install / update Leaderf"

