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

cp -av .eslintrc ~/.eslintrc

echo "===> reset bashrc info"
begin="# Start vim environment setup"
end="# Finish vim environment setup"
 
grep -q "${begin}" ~/.bashrc
if [[ $? -eq 0 ]]; then
    echo "head is existed."
    grep -q "${end}" ~/.bashrc
    if [[ $? -eq 0 ]]; then
        echo "head is existed"
        echo "backup current content to .bashrc"
        cp ~/.bashrc ~/.bashrc.backup
        sed -i "/${begin}/,/${end}/d" ~/.bashrc
        echo "push latest content to .bashrc"
        echo "${begin}" >> ~/.bashrc
        echo "# PLEASE DO NOT CHANGE ANYTHING IN THIS SCOPE!!!" >> ~/.bashrc
        echo "export PATH=\$PATH:/home/$USER/bin" >> ~/.bashrc
        echo "EDITOR='vim'" >> ~/.bashrc
        echo "alias tmux='tmux -2'" >> ~/.bashrc
        echo "$end" >> ~/.bashrc
    else
        echo "keyword [${begin}] is not existed"
    fi
else
    echo "keyword [${end}] is not existed"
fi

echo 'Deploy finished. <======='
