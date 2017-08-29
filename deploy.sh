#!/bin/bash
echo '=======> Deploy file and folder to HOME path.'
cp -av ./.vimrc ~/.vimrc

cp -av ./.vim/* ~/.vim/

cp -av ./.tmux.conf ~/.tmux.conf

cp -av ./.gitconfig ~/.gitconfig

if [ ! -d "~/bin" ]; then
    mkdir -p ~/bin
fi
cp -av ./gwntj ~/bin/gwntj

cp -av .jshintrc ~/.jshintrc

echo 'Deploy finished. <======='

