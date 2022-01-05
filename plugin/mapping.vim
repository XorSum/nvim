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
" set fillchars+=stl:\ ,stlnc:\
set mouse=a


" Leader
nnoremap <SPACE> <Nop>
let mapleader = " "

" Quicker window movement
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-h> <C-w>h
"nnoremap <C-l> <C-w>l


" 全选复制粘贴
nmap <C-a> <esc>ggVG<CR>
vnoremap <C-c> "+y
nmap <C-v> "+p



" YouCompleteMe
" let g:ycm_autoclose_preview_window_after_completion=1
" nnoremap <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>
" let g:ycm_server_python_interpreter='/usr/bin/python'
" let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'

" vim 自身命令行模式智能补全
" set wildmenu


