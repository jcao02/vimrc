" Pathogen for plugins
execute pathogen#infect()

" Color scheme solarized
syntax enable 
colorscheme solarized
set background=dark


" Some basic options 
filetype on
filetype plugin indent on
filetype plugin on 
set number
set ruler
set cursorline
set showcmd
set nocompatible
set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class


" Folding
set foldmethod=indent
set foldlevel=99

" Indentation
set expandtab
set tabstop=4
set shiftwidth=4
set smartindent 
set autoindent

" Changes the color after column 80
let &colorcolumn=join(range(81,999), ",")

" Searches
set incsearch
set hlsearch 
set ignorecase
set smartcase

" GUI
if has('gui_running')
    set guioptions-=T
endif

" Including functions
source $HOME/.vim/src/functions.vim

" Including maps
source $HOME/.vim/src/maps.vim

" YCM completion conf file
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/cpp/ycm/.ycm_extra_conf.py'
