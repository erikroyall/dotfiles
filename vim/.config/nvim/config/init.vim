filetype off

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-sensible'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim', { 'for': 'rust' }
Plug 'itchyny/lightline.vim'
Plug 'kien/ctrlp.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'altercation/vim-colors-solarized'
Plug 'majutsushi/tagbar'
Plug 'xolox/vim-easytags'
Plug 'vim-syntastic/syntastic'
Plug 'JuliaEditorSupport/julia-vim'
Plug 'xolox/vim-misc'
Plug 'airblade/vim-gitgutter'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ervandew/supertab'
Plug 'artur-shaik/vim-javacomplete2', { 'for': 'java' }
Plug 'valloric/youcompleteme'
Plug 'ternjs/tern_for_vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'carlitux/deoplete-ternjs', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'othree/jspc.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'easymotion/vim-easymotion'
Plug 'godlygeek/tabular'
Plug 'mattn/emmet-vim', { 'for': 'html' }
Plug 'morhetz/gruvbox'
Plug 'elixir-lang/vim-elixir', { 'for': 'haskell' }
Plug 'NLKNguyen/papercolor-theme'
Plug 'eagletmt/ghcmod-vim', { 'for': 'haskell' }
Plug 'neovimhaskell/haskell-vim', { 'for': 'haskell' }
Plug 'eagletmt/neco-ghc', { 'for': 'haskell' }
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'editorconfig/editorconfig-vim'

call plug#end()

filetype plugin indent on
