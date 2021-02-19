" Vundle Plugin manager
" See https://github.com/VundleVim/Vundle.vim for install

set shell=/bin/bash
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

Plugin 'elixir-editors/vim-elixir'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required



syntax on
set encoding=utf-8
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

