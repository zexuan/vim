syntax on
" tab宽度和缩进同样设置为4
set nu
set tabstop=4
set softtabstop=4
set shiftwidth=4

set nocompatible
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
" set ignorecase
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

" 你在此设置运行时路径
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

" 在这里面输入安装的插件
" Vundle 本身就是一个插件
Plugin 'gmarik/Vundle.vim'
Plugin 'project.tar.gz'
Plugin 'bufexplorer.zip'
"Plugin 'neocomplcache'
Plugin 'fugitive.vim'
"Plugin 'cscope.vim'
Plugin 'ctags.vim'
Plugin 'SuperTab'
"Plugin 'taglist.vim'
"Plugin 'cscope_macros.vim'
Plugin 'Indent-Guides'
Plugin 'a.vim'
" Plugin 'Powerline'
" Plugin 'indexer.tar.gz'
"
Plugin 'Valloric/YouCompleteMe'
" Plugin 'git://git.wincent.com/command-t.git'
" Plugin 'git://github.com/scrooloose/nerdtree.git'
" Plugin 'git://github.com/Xuyuanp/nerdtree-git-plugin.git'




"所有插件都应该在这一行之前
call vundle#end()

filetype off
filetype plugin indent on
