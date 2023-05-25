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

echo "===> reset zshrc info"
begin="# Start vim environment setup"
end="# Finish vim environment setup"
 
grep -q "${begin}" ~/.zshrc
if [[ $? -eq 0 ]]; then
    echo "head is existed."
    grep -q "${end}" ~/.zshrc
    if [[ $? -eq 0 ]]; then
        echo "head is existed"
        echo "backup current content to .zshrc"
        cp ~/.zshrc ~/.zshrc.backup
        sed -i "/${begin}/,/${end}/d" ~/.zshrc
        echo "push latest content to .zshrc"
        echo "${begin}" >> ~/.zshrc
        echo "# PLEASE DO NOT CHANGE ANYTHING IN THIS SCOPE!!!" >> ~/.zshrc
        echo "export PATH=\$PATH:/home/$USER/bin" >> ~/.zshrc
        echo "EDITOR='vim'" >> ~/.zshrc
        echo "alias tmux='tmux -2'" >> ~/.zshrc
        echo "$end" >> ~/.zshrc
    else
        echo "keyword [${begin}] is not existed"
    fi
else
    echo "keyword [${end}] is not existed"
fi

echo 'Deploy finished. <======='
