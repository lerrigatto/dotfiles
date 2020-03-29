" Plugin manager
execute pathogen#infect()
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

" NERDTree will open automatically if vim is called on a folder
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif


" NERDTree shortcut
map <C-n> :NERDTreeToggle<CR>

" NERDTree will not stop vim to close
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
