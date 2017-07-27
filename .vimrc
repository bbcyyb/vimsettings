""""""""""""""""""""""""""""""""""""""""""""""
"基本设置
""""""""""""""""""""""""""""""""""""""""""""""
"打开代码高亮
syntax enable
"设置背景色为黑色
set background=dark
"设置颜色主题
colorscheme solarized
"打开行数显示
set nu
"打开文件类型侦测
filetype on
"根据侦测到的不同类型加载对应的插件
filetype plugin on
"开启实时搜索功能
set incsearch
"搜索时大小写不敏感
set ignorecase
"关闭兼容模式
set nocompatible
"vim 自身命令行模式智能补全
set wildmenu
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
