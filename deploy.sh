#!/bin/bash
echo '=======> Deploy file and folder to HOME path.'
cp -av ./.vimrc ~/.vimrc

if [ ! -d "~/.vim/" ]; then
    mkdir ~/.vim/
fi

cp -av ./.tmux.conf ~/.tmux.conf

cp -av ./.gitconfig ~/.gitconfig

cp -av ./bin/. ~/bin/

cp -av .jshintrc ~/.jshintrc

echo 'Deploy finished. <======='

