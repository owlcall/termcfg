#!/bin/sh

ROOT=$( cd "$( dirname "$0" )" && pwd )

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
cp theme.vim ~/.vim/colors/
touch ~/.vimrc
echo "source $ROOT/.vimrc" >> ~/.vimrc
vim +PluginInstall +qall
cp airtheme.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/airtheme.vim
