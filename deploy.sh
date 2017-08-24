#!/bin/bash
echo '=======> Deploy file and folder to HOME path.'
echo '1. cp -av ./.vimrc ~/.vimrc'
cp -av ./.vimrc ~/.vimrc
echo '2. cp -av ./.vim/* ~/.vim/'
cp -av ./.vim/* ~/.vim/
echo '3. cp -av ./.tmux.conf ~/.tmux.conf'
cp -av ./.tmux.conf ~/.tmux.conf
echo 'Deploy finished. <======='

