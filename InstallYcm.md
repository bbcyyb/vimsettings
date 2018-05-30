# Install YouCompleteMe
[https://www.jianshu.com/p/d908ce81017a?nomobile=yes]

## 1. Install dependencies

```shell
$ sudo apt-get update && sudo apt-get -y install cmake g++ python-dev
```

## 2. Download and install libclang3.9 or above

If you don't work under c-family, ignore it.

```shell
$ apt-get install llvm-3.9 clang-3.9 libclang-3.9-dev libboost-all-dev
```

## 3. Compile & Build `ycm_core` library

### Create a folder for compiled files

```shell
$ mkdir ~/.ycm_build
$ cd ~/.ycm_build
```

### Generate makefile

#### With c-family

```shell
$ cmake -G "Unix Makefiles" -DUSE_SYSTEM_BOOST=ON -DEXTERNAL_LIBCLANG_PATH=/usr/lib/x86_64-linux-gnu/libclang-3.9.so . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
```

#### Without c-family

```shell
$ sudo cmake -G "Unix Makefiles" . ~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp
```

### Build ycm_core

```shell
$ sudo cmake --build . --target ycm_core --config Release
```

## 4. Configuration

### Copy `.ycm_extra_conf.py`

```shell
$ cp ~/.vim/bundle/YouCompleteMe/third_party/ycmd/examples/.ycm_extra_conf.py ~/.vim/
```

#### Add `.vimrc` conf

> These info has been added into .vimrc already.

```shell
" ～/.vimrc
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/.ycm_extra_conf.py'
```
