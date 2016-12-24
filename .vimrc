set noswapfile
" 定义快捷键的前缀，即<Leader>
"let mapleader=";"
" 开启文件类型侦测
filetype off 
" 根据侦测到的不同类型加载对应的插件
filetype plugin on
" 开启实时搜索功能
set incsearch
" 搜索时大小写不敏感
set ignorecase
" 关闭兼容模式
set nocompatible
" vim 自身命令行模式智能补全
set wildmenu
" 禁止光标闪烁
" set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T
" 总是显示状态栏
set laststatus=2
" 显示光标当前位置
set ruler
" 开启行号显示
set number
" 高亮显示搜索结果
set hlsearch
" 开启语法高亮功能
syntax enable
" 允许用指定语法高亮配色方案替换默认方案
syntax on
" 自适应不同语言的智能缩进
filetype indent on
" 将制表符扩展为空格
set expandtab
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4
" 让 vim 把连续数量的空格视为一个制表符
set softtabstop=4
" 基于缩进或语法进行代码折叠
set foldmethod=indent
"set foldmethod=syntax
"set foldmethod=manual
" 启动 vim 时关闭折叠代码
set nofoldenable
set showmatch
set autoindent 
set wrap  
set smartindent


inoremap ( ()<ESC>i
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap { {}<ESC>i
inoremap } <c-r>=ClosePair('}')<CR>
inoremap [ []<ESC>i
inoremap ] <c-r>=ClosePair(']')<CR>
inoremap < <><ESC>i
inoremap > <c-r>=ClosePair('>')<CR>

map vi' <Esc>?'<CR>lv/'<CR>h
map vi" <Esc>?"<CR>lv/"<CR>h
map va' <Esc>?'<CR>v/'<CR>
map va" <Esc>?"<CR>v/"<CR>
map vix <Esc>?><CR>lv/<<CR>h
map vi= <ESC>?\s\+\S\+\s*=\s*\S\+<CR>lv/=<CR>/\S<CR>/[\s<>\n]<CR>h
map vi/ <Esc>?\/<CR>l<Esc>v/\/<CR>h
map vt) <ESC>v/)<CR>h
map vt' <ESC>v/'<CR>h
map vt" <ESC>v/"<CR>h
map vt; <ESC>v/;<CR>h
map vt, <ESC>v/,<CR>h
map vt} <ESC>v/}<CR>h




function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf



set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" let Vundle manage Vundle
" required!
Bundle 'project.tar.gz'
Bundle 'bufexplorer.zip'
Bundle 'neocomplcache'
Bundle 'fugitive.vim'
Bundle 'php.vim'
"Bundle 'cscope.vim'
Bundle 'ctags.vim'
Bundle 'SuperTab'
Bundle 'taglist.vim'
"Bundle 'cscope_macros.vim'
Bundle 'Indent-Guides'
"Bundle 'a.vim'
Bundle 'The-NERD-Commenter'
"Bundle 'DrawIt'
"Bundle 'UltiSnips'
"Bundle 'Powerline'
"Bundle 'indexer.tar.gz'
"Bundle 'DfrankUtil'
"Bundle 'vimprj'
"Bundle 'YouCompleteMe'
let g:SuperTabDefaultCompletionType = "<c-x><c-o>"
filetype plugin indent on    " required!

" Hightlight the ifs and buts
syntax on

autocmd FileType php set omnifunc=phpcomplete#CompletePHP

let Tlist_Show_One_File = 1            "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1          "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1         "在右侧窗口中显示taglist窗口
