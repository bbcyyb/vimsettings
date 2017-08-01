""""""""""""""""""""""""""""""""""""""""""""
"设置Vundle
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'colepeters/spacemacs-theme.vim'
call vundle#end() 
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""
"基本设置
""""""""""""""""""""""""""""""""""""""""""""""
"打开代码高亮
syntax enable
"允许用指定语法高亮配色方案替换默认方案
syntax on
"将制表符扩展为空格
set expandtab
"设置编辑时制表符占用空格数
set tabstop=4
"设置格式化时制表符占用空格数
set shiftwidth=4
"让vim把连续数量的空格视为一个制表符
set softtabstop=4
"基于缩进或语法进行代码折叠
"set foldmethod=indent
set foldmethod=syntax
"设置背景色为黑色
set background=dark
"设置颜色主题
set termguicolors
colorscheme spacemacs-theme
"打开行数显示
set number
"禁止拆行
set nowrap
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"高亮显示当前行
set cursorline
"高亮显示当前列
"set cursorcolumn
"高亮显示搜索结果
set hlsearch
"开启实时搜索功能
set incsearch
"搜索时大小写不敏感
set ignorecase
"设置gvim显示字体
set guifont=YaHei\ Consoles\ Hybrid\ 11.5
"关闭兼容模式
set nocompatible
"vim 自身命令行模式智能补全
set wildmenu
"禁止光标闪烁
set gcr=a:block-blinkon0
"禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
""""""""""""""""""""""""""""""""""""""""""""""
"快捷键定义
""""""""""""""""""""""""""""""""""""""""""""""
"定义快捷键的前缀，即<Leader>
let mapleader=";"
"定义快捷键到行首(line begin)
nmap <Leader>b ^
"定义快捷键到行尾(line end)
nmap <Leader>e $
"设置快捷键将选中文本块复制至系统剪切板
vnoremap <Leader>y "+y
"设置快捷键将系统剪贴板内容粘贴至vim
nmap <Leader>p "+p
"定义快捷键关闭当前分割窗口
nmap <Leader>q :q<CR>
"定义快捷键保存当前窗口内容
nmap <Leader>w :w<CR>
"依次遍历子窗口
nnoremap <Leader>nw <C-W><C-W>
"跳转至右方的窗口
nnoremap <Leader>lw <C-W>l
"跳转至左方的窗口
nnoremap <Leader>hw <C-W>h
"跳转至上方的子窗口
nnoremap <Leader>kw <C-W>k
"跳转至下方的子窗口
nnoremap <Leader>jw <C-W>j
"定义快捷键在结对符之间跳转，助记pair
nmap <Leader>pa %
""""""""""""""""""""""""""""""""""""""""""""""
"NERDTree设置
""""""""""""""""""""""""""""""""""""""""""""""
"使用NERDTree查看工程文件。设置快捷键，速记：tree show
nmap <Leader>ts :NERDTreeToggle<CR>
"设置NERDTree子窗口位置
let NERDTreeWinSize=36
"设置NERDTree子窗口位置
let NERDTreeWinPos="left"
"显示隐藏文件
let NERDTreeShowHidden=1
"NERDTree子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
"删除文件时自动删除文件对应额buffer
let NERDTreeAutoDeleteBuffer=1

""""""""""""""""""""""""""""""""""""""""""""""
"BufExplorer设置
""""""""""""""""""""""""""""""""""""""""""""""
"Do not show default help.
let g:bufExplorerDefaultHelp=0
"Show relative paths.
let g:bufExplorerShowRelativePath=1
"Sort by most recently used.
let g:bufExplorerSortBy='mru'
"Split left.
let g:bufExplorerSplitRight=0
"Split vartically.
let g:bufExplorerSplitVertical=1
"Split width
let g.bufExplorerSplitVertSize=36
"Open in new window.
let g:bufExplorerUseCurrentWindow=1

"autocmd BufWinEnter \[BufList\]
"setl nonumber
