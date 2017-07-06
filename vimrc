set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'Lokaltog/vim-powerline'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'Raimondi/delimitMate'
call vundle#end()            " required
filetype plugin indent on    " required

" Color scheme
syntax enable
set background=dark
colorscheme molokai

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

nmap LB 0
nmap LE $

vnoremap <C-c> "+y
nmap <C-v> "+p
nmap <C-a> <esc>ggVG<CR>


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


" YouCompleteMe
let g:ycm_autoclose_preview_window_after_completion=1
nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
let g:ycm_server_python_interpreter='/usr/bin/python'
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" Tagbar
let g:tagbar_width=35
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>



