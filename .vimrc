" Plugin manager
syntax on

set encoding=utf-8

" filetype plugin indent on

" ***** Mess with tabs ****

" How wide a tab (/t) is defined/displayed
" 2 space tabs FTW
set tabstop=2

" Change the indents (>>/<<) accordingly
set shiftwidth=2

" How far the cursor move when you hit tab
set softtabstop=2

" Expand TABs to spaces of tabstop amount
set expandtab

" ******************************

" show line numbers
set number

" autoindent
set autoindent

" show cursor
set cursorline

" highlight the other next parenthesis
set showmatch

" enable all python syntax highlights
let python_highlight_all = 1

" Customize .py formats for PIP8
au BufNewFile,BufRead *.py
  \ set tabstop=4 |
  \ set softtabstop=4 |
  \ set shiftwidth=4 |
  \ set textwidth=79 |
  \ set expandtab |
  \ set autoindent |
  \ set fileformat=unix 

