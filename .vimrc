""""""""""""""""""""""""""""""""""""""""""""
"设置Vundle
""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible 
filetype off 
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'gregsexton/gitv'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'colepeters/spacemacs-theme.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'joshdick/onedark.vim'
Plugin 'crusoexia/vim-monokai'
Plugin 'powerline/powerline'
Plugin 'junegunn/fzf'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'Chiel92/vim-autoformat'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'Tcomment'
Plugin 'Raimondi/delimitMate'
Plugin 'tpope/vim-surround'
" Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'Yggdroot/indentLine'
call vundle#end() 
filetype plugin indent on

""""""""""""""""""""""""""""""""""""""""""""""
"基本设置
""""""""""""""""""""""""""""""""""""""""""""""
"打开代码高亮
syntax enable
"允许用指定语法高亮配色方案替换默认方案
syntax on
"设置当文件发生外部改动时,自动更新文件
set autoread
"将制表符扩展为空格
set expandtab
"设置编辑时制表符占用空格数
set tabstop=4
"设置格式化时制表符占用空格数
set shiftwidth=4
"让vim把连续数量的空格视为一个制表符
set softtabstop=4
"基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
"设置背景色为黑色
set background=dark
"设置颜色主题
"if(has("termguicolors"))
"    set termguicolors
"endif
"调整Tmux以增强其同Vim的集成度
if exists('$TMUX')
    set term=screen-256color
endif
colorscheme gruvbox
"打开行数显示
set number
"自动缩进
set ai
"智能缩进
set si
"禁止拆行
set nowrap
"总是显示状态栏
set laststatus=2
"显示光标当前位置
set ruler
"高亮显示当前行
set cursorline
"高亮显示当前列
set cursorcolumn
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
"禁止在vimgrep中查找以下目录
set wildignore+=**/node_modules/**,**/.git/,**/*.swp
""""""""""""""""""""""""""""""""""""""""""""""
"快捷键定义
""""""""""""""""""""""""""""""""""""""""""""""
"定义快捷键的前缀，即<Leader>
let mapleader=";"
"定义快捷键到行首(line begin)
nmap <Leader>r ^
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
"nerdtree-git-plugin设置
""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }
""""""""""""""""""""""""""""""""""""""""""""""
"BufExplorer设置
""""""""""""""""""""""""""""""""""""""""""""""
"Do not show default help.
let g:bufExplorerDefaultHelp=0
"Show relative paths.
let g:bufExplorerShowRelativePath=1
"Sort by most recently used.
let g:bufExplorerSortBy='mru'
"Split right.
let g:bufExplorerSplitRight=1
"Split vartically.
let g:bufExplorerSplitVertical=1
"Split width
let g:bufExplorerSplitVertSize=36
"Open in new window.
let g:bufExplorerUseCurrentWindow=0

"autocmd BufWinEnter \[BufList\]
"setl nonumber

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: Syntastic
""""""""""""""""""""""""""""""""""""""""""""""

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_args = "-c /home/kevin/.jshintrc"
let g:syntastic_javascript_jshint_args = "/home/kevin/.jshintrc"

let g:syntastic_json_checkers = ['jsonlint']

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args = '--config=/home/kevin/.flake8.ini'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs = 1
" Manually to syntastic check
noremap <F3> :SyntasticCheck<CR>:Errors<CR>
" Close the error list
noremap <F4> ::SyntasticReset<CR>
noremap <leader>sn :lnext<CR>
noremap <leader>sp :lprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-autoformat
""""""""""""""""""""""""""""""""""""""""""""""
noremap <F5> :Autoformat<CR>
let g:autoformat_autoindent = 0
let g:autoformat_retab = 0
let g:autoformat_remove_trailing_spaces = 0

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-gitgutter
""""""""""""""""""""""""""""""""""""""""""""""
" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
nmap <Leader>vv :GitGutterToggle<CR>
nmap <Leader>vn <Plug>GitGutterNextHunk
nmap <Leader>vp <Plug>GitGutterPrevHunk

let g:gitgutter_highlight_lines = 0

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-indent-guide
""""""""""""""""""""""""""""""""""""""""""""""
" let g:indent_guides_start_level = 2
" let g:indent_guides_guide_size = 1
" let g:indent_guides_enable_on_vim_startup = 1

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: indentLine
""""""""""""""""""""""""""""""""""""""""""""""
" indentLine 代码缩进线标志线
let g:indentLine_char = '|'
let g:indentLine_color_term = 239
map <F11> :IndentLinesToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: powerline 
""""""""""""""""""""""""""""""""""""""""""""""
set guifont=PowerlineSymbols\ for\ Powerline
set nocompatible
set t_Co=256
let g:Powerline_symbols = 'fancy'

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: gruvbox 
""""""""""""""""""""""""""""""""""""""""""""""
let g:gruvbox_contrast_dark = 'soft'
let g:gruvbox_contrst_light = 'soft'
let g:gruvbox_hls_cursor = 'blue'
