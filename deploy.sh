#!/bin/bash
echo '=======> Deploy file and folder to HOME path.'
cp -av ./.vimrc ~/.vimrc

cp -av ./.vim/* ~/.vim/

cp -av ./.tmux.conf ~/.tmux.conf

cp -av ./.gitconfig ~/.gitconfig

cp -av ./bin/. ~/bin/

cp -av .jshintrc ~/.jshintrc

echo 'Deploy finished. <======='

