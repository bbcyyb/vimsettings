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
Plugin 'davidhalter/jedi-vim'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
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
Plugin 'ap/vim-buftabline'
" emmet, 用于快速构建html代码片段
Plugin 'mattn/emmet-vim'
" JavaScript bundle for vim, this bundle provides syntax highlighting and improved indentation.
Plugin 'pangloss/vim-javascript'
" Syntax highlighting and indenting for JSX
Plugin 'mxw/vim-jsx'
" 增强型Python语法检测
Plugin 'hdima/python-syntax'
" 增加python语法缩进加强
Plugin 'vim-scripts/indentpython.vim'
" Typescript syntax highlighting vim
Plugin 'leafgarland/typescript-vim'
" Go language support for Vim
Plugin 'fatih/vim-go'
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
"隐藏.pyc文件
let NERDTreeIgnore=['\.pyc$','\~$']
" 自动打开NERDTree
" autocmd vimenter * NERDTree
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

let g:syntastic_javascript_checkers = ['eslint']
"let g:syntastic_javascript_checkers = ['jshint']
"let g:syntastic_javascript_jshint_args = "-c /home/kevin/.jshintrc"
let g:syntastic_javascript_jshint_args = "/home/kevin/.jshintrc"

let g:syntastic_json_checkers = ['jsonlint']

let g:syntastic_python_checkers = ['flake8']
" let g:syntastic_python_flake8_args = '--config=/home/kevin/.flake8.ini'

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

""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-buftabline 
""""""""""""""""""""""""""""""""""""""""""""""
fun! DeleteAllBuffersInWindow()
    let s:curWinNr = winnr()
    if winbufnr(s:curWinNr) == 1
        ret
    endif
    let s:curBufNr = bufnr("%")
    exe "bn"
    let s:nextBufNr = bufnr("%")
    while s:nextBufNr != s:curBufNr
        exe "bn"
        exe "bdel ".s:nextBufNr
        let s:nextBufNr = bufnr("%")
    endwhile
endfun

fun! DeleteCurrentBufferInWindow()
    let s:curWinNr = winnr()
    if winbufnr(s:curWinNr) == 1
        ret
    endif
    let s:curBufNr = bufnr("%")
    exe "bn"
    let s:nextBufNr = bufnr("%")
    if s:nextBufNr != s:curBufNr
        exe "bdel ".s:curBufNr
    endif
endfun
set hidden
let g:buftabline_numbers = 2
let g:buftabline_indicators = 'on'
let g:buftabline_separators = 'on'
let g:buftabline_plug_max = 10
nnoremap <Leader>d :bnext<CR>
nnoremap <Tab> :bnext<CR>
nnoremap <Leader>a :bprev<CR>
nnoremap <Leader><Tab> :bprev<CR>
nmap <leader>1 <Plug>BufTabLine.Go(1)
nmap <leader>2 <Plug>BufTabLine.Go(2)
nmap <leader>3 <Plug>BufTabLine.Go(3)
nmap <leader>4 <Plug>BufTabLine.Go(4)
nmap <leader>5 <Plug>BufTabLine.Go(5)
nmap <leader>6 <Plug>BufTabLine.Go(6)
nmap <leader>7 <Plug>BufTabLine.Go(7)
nmap <leader>8 <Plug>BufTabLine.Go(8)
nmap <leader>9 <Plug>BufTabLine.Go(9)
nmap <leader>0 <Plug>BufTabLine.Go(0)
map <leader>da     :call DeleteAllBuffersInWindow()<CR>
map <leader>df     :call DeleteCurrentBufferInWindow()<CR>
""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: YouCompleteMe
""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe settings
let g:ycm_collect_identifiers_from_comments_and_strings = 0
" 输入第0个字符开始补全
let g:ycm_min_num_of_chars_for_completion=0
" 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0
" 开启语义补全
let g:ycm_seed_identifiers_with_syntax=1
" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
" let g:ycm_filetype_whitelist = { 'python': 1 }
let g:ycm_python_binary_path = 'python'
map <C-G>  :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_key_invoke_completion = '<C-J>'
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_server_python_interpreter = '/usr/bin/python'
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: UltiSnips
""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger="<leader><tab>"
let g:UltiSnipsJumpForwardTrigger="<leader><tab>"
let g:UltiSnipsJumpBackwardTrgger="<leader><tab>"
""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: vim-jsx
""""""""""""""""""""""""""""""""""""""""""""""
let g:jsx_ext_required = 0
""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: python-syntax
""""""""""""""""""""""""""""""""""""""""""""""
let python_highlight_all = 1
""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin: jedi-vim
""""""""""""""""""""""""""""""""""""""""""""""
let g:jedi#auto_initialization = 0
let g:jedi#auto_vim_configuration = 0
let g:jedi#use_tabs_not_buffers = 1
let g:jedi#use_splits_not_buffers = "left"
let g:jedi#popup_on_dot = 0
let g:jedi#popup_select_first = 0
let g:jedi#show_call_signatures = "1"
