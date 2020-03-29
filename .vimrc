" Plugin manager
syntax on
" filetype plugin indent on

" Mess with tabs
set tabstop=2       " Tab still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=2    " Indents will have a width of 4
set softtabstop=2   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab

