#!/bin/sh

ROOT=$( cd "$( dirname "$0" )" && pwd )

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
mkdir -p ~/.vim/colors
vim +PluginInstall +qall
cp $ROOT/theme.vim ~/.vim/colors/

rm $ROOT/.vimrc
echo "source $ROOT/plugins.vim" >> $ROOT/.vimrc
echo "source $ROOT/visual.vim" >> $ROOT/.vimrc
echo "source $ROOT/general.vim" >> $ROOT/.vimrc
echo "source $ROOT/keys.vim" >> $ROOT/.vimrc
echo "source $ROOT/.vimrc" >> ~/.vimrc

vim +PluginInstall +qall
cp $ROOT/airtheme.vim ~/.vim/bundle/vim-airline-themes/autoload/airline/themes/airtheme.vim
