execute pathogen#infect()

" Color scheme solarized
syntax enable 
set background=dark
colorscheme solarized


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

" Searches
set incsearch
set hlsearch 
set ignorecase
set smartcase

"" Functions

" Gets a char from user command line
function InputChar()
    let c = getchar()
    return type(c) == type(0) ? nr2char(c) : c
endfunction

" Aligns the code using Tab command but with variable keyword
function Align()
    let keyword = InputChar()
    execute ':Tab /' . keyword
endfunction

" A wrapper function to restore the cursor position, window position,
" and last search after running a command.
function! Preserve(command)
    " Save the last search
    let last_search=@/
    " Save the current cursor position
    let save_cursor = getpos(".")
    " Save the window position
    normal H
    let save_window = getpos(".")
    call setpos('.', save_cursor)

    " Do the business:
    execute a:command

    " Restore the last_search
    let @/=last_search
    " Restore the window position
    call setpos('.', save_window)
    normal zt
    " Restore the cursor position
    call setpos('.', save_cursor)
endfunction
"" Maps

let mapleader= ','

" Save
map <Leader>w :w!<cr>

" No highlight
map <Leader>h :noh<cr>

" NERDTree
map <Leader>n :NERDTreeToggle<CR>

" Tabularize
map <Leader>a :exe Preserve(Align())<CR>
