## Ubuntu

### Delete existing vim

Check the related files and delete them

Delete all files from result of dpkg command

```shell
dpkg -l | grep vim
sudo dpkg -P vim vim-common vim-run
```

### Install Dependencies

If you don't need support for Python3, Lua, Ruby, can ignore installation of related dependencies

```shell
sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev ruby-dev lua5.1 lua5.1-dev git
```

### Download Vim source code

Find out configuration of python you want to join into vim before install vim
`e.g /usr/lib/python2.7/config-x86_64-linux-gnu`

> note VIMRUNTIMEDIR depends on vim version

```shell
git clone https://github.com/vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
            --enable-perlinterp \
            --enable-luainterp \
            --enable-gui=gtk2 --enable-cscope --prefix=/usr
make VIMRUNTIMEDIR=/usr/share/vim/vim81
sudo make install
```

### Set vim as default editor

```shell
sudo update-alternatives --install /usr/bin/editor editor /usr/bin/vim 1
sudo update-alternatives --set editor /usr/bin/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/vim 1
sudo update-alternatives --set vi /usr/bin/vim
```

### Finially

Delete source code

run `vim --version | grep python` to comfirm python2 and python3 are incompatible.
