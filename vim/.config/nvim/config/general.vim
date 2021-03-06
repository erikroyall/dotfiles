if !has('nvim')
  set nocompatible
  set ttymouse=xterm2
endif

set mouse=a

set number
autocmd InsertEnter * :set number
autocmd InsertLeave * :set relativenumber

set showmatch
syntax on
set ignorecase
set incsearch
set autoindent
set cindent
set expandtab
set shiftwidth=4
set smartindent
set smarttab
set softtabstop=4
set tabstop=4

set ruler
set undolevels=1000
set backspace=indent,eol,start

" Force nvim block cursor shape
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=

let mapleader = ","

