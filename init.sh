#!/bin/bash
echo '=======> Run script for vim initialization.'
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install js-beautify for Plugin => Chile92/vim-autoformat
npm -g install js-beautify

# Install yapf for Plugin => Chile92/vim-autoformat
pip install yapf

apt-get install -y vim-scripts vim-gtk vim-gnome
echo 'Initialize finished. <======='
