if &compatible
  set nocompatible
endif

set termguicolors
lua << EOF
require("bufferline").setup{}
EOF

call plug#begin()
" The default plugin directory will be as follows:
"   - Vim (Linux/macOS): '~/.vim/plugged'
"   - Vim (Windows): '~/vimfiles/plugged'
"   - Neovim (Linux/macOS/Windows): stdpath('data') . '/plugged'
" You can specify a custom plugin directory by passing it as the argument
"   - e.g. `call plug#begin('~/.vim/plugged')`
"   - Avoid using standard Vim directory names like 'plugin'

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
" 文件夹浏览功能
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'scrooloose/nerdtree'
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" 搜索功能
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Plug 'majutsushi/tagbar'
" Plug 'altercation/vim-colors-solarized'
" 配色主题
Plug 'tomasr/molokai'
" 在两个大括号之间加上竖着的线
Plug 'Yggdroot/indentLine'
"括号补全
Plug 'jiangmiao/auto-pairs' 
"也是括号补全，但是不好用
"Plug 'Raimondi/delimitMate' 

" 语言服务器，自动补全，报错提示
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" 启动界面
Plug 'mhinz/vim-startify'


Plug 'kyazdani42/nvim-web-devicons' " Recommended (for coloured icons)
" Plug 'ryanoasis/vim-devicons' Icons without colours
Plug 'akinsho/bufferline.nvim'

" 底部的状态栏
Plug 'Lokaltog/vim-powerline'

" Initialize plugin system
call plug#end()


