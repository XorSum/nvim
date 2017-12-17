set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Yggdroot/indentLine'
Plugin 'Raimondi/delimitMate'
" Plugin 'Valloric/YouCompleteMe'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Color scheme
syntax on 
syntax enable
colorscheme molokai  
set background=dark 

set number
set relativenumber
set nocompatible

set backspace=indent,eol,start
set cindent
set smartindent
set autoindent
set shiftwidth=4
set expandtab
set smarttab
set tabstop=4

set scrolloff=3
set hlsearch
set display=lastline
set ruler

set laststatus=2 " Always display the status line
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set mouse=a

" Leader
let mapleader = ";"

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" 定义快捷键到行首和行尾
nmap LB 0
nmap LE $

" 全选复制粘贴
nmap <C-a> <esc>ggVG<CR>
vnoremap <C-c> "+y
nmap <C-v> "+p



" NERDTree config
let NERDChristmasTree=0
let NERDTreeWinSize=40
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$', '\.pyc$', '\.swp$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"
autocmd vimenter * if !argc() | NERDTree | endif " Automatically open a NERDTree if no files where specified
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif " Close vim if the only window left open is a NERDTree
nmap <F7> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'


" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>

" YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion=1
" nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_server_python_interpreter='/usr/bin/python'
" let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" vim 自身命令行模式智能补全
set wildmenu


" 按F9一键编译并运行
map <F9> :call CompileRunGcc()<CR>
func! CompileRunGcc()
        exec "w"
        if &filetype == 'c'
           exec "!g++ % -DLOCAL -o   %<"
           exec "!time ./%<"
        elseif &filetype == 'cpp'
           exec "!g++ % -std=c++11 -DLOCAL -o  %<"
           exec "!time ./%<"
        elseif &filetype == 'java'
           exec "!javac %"
           exec "!time java %<"
        elseif &filetype == 'sh'
           :!time bash %
        elseif &filetype == 'python'
        exec "!time python3.5 %"
        endif
endfunc
