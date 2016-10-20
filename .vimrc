if !has('nvim')
  set nocompatible
endif

filetype off

" set the runtime path to include Vundle and initialize
call plug#begin('~/.vim/plugged')

" Plugins
Plug 'scrooloose/syntastic'
Plug 'zah/nim.vim'
Plug 'pangloss/vim-javascript'
Plug 'moll/vim-node'
Plug 'Valloric/YouCompleteMe'
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable'}
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'jiangmiao/auto-pairs'
Plug 'rip-rip/clang_complete'
Plug 'shawncplus/phpcomplete.vim'
Plug 'mxw/vim-jsx'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'leafgarland/typescript-vim'

call plug#end()
filetype plugin indent on

set number	" Show line numbers
set showmatch	" Highlight matching brace
syntax on
set ignorecase	" Always case-insensitive
set incsearch	" Searches for strings incrementally
set autoindent	" Auto-indent new lines
set cindent	" Use 'C' style program indenting
set expandtab	" Use spaces instead of tabs
set shiftwidth=2	" Number of auto-indent spaces
set smartindent	" Enable smart-indent
set smarttab	" Enable smart-tabs
set softtabstop=2	" Number of spaces per Tab


set ruler	" Show row and column ruler information 
set undolevels=1000	" Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "/home/erik/.ycm_extra_conf.py"
let g:ycm_rust_src_path = "/usr/local/rust/rustc-1.12.0/src"
let g:ycm_python_binary_path = "python"

" Tabs (Shift+Tab inserts an actual tab)
inoremap <S-Tab> <C-V><Tab>

fun! JumpToDef()
  if exists("*GotoDefinition_" . &filetype)
    call GotoDefinition_{&filetype}()
  else
    exe "norm! \<C-]>"
  endif
endf

" Always show the status bar
set laststatus=2

" Jump to tag
" nn <M-g> :call JumpToDef()<cr>
" ino <M-g> <esc>:call JumpToDef()<cr>i

" Map C^X to NERDTree
map <C-x> :NERDTreeToggle<CR>
" Close NERDTree if its the only thing opened.
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
" Detect JSX in .js files
let g:jsx_ext_required = 0
" Clang autocompletion requires this
let g:clang_library_path='/usr/lib/llvm-3.8/lib'

" Syntastic recommended
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'active',
                            \ 'active_filetypes': ['python', 'javascript'],
                            \ 'passive_filetypes': [] }

" Use when pasting code
set pastetoggle=<F5>

command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif

" Ctrl+S to save
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

let g:syntastic_javascript_checkers = ['eslint']

