set autoindent
set autoread
set backspace=indent,eol,start
set clipboard+=unnamed
set colorcolumn=80
set confirm
set cursorline
set expandtab
set fenc=utf-8
set hidden
set hlsearch
set ignorecase
set incsearch
set list
set listchars=tab:>>,trail:#,eol:$,extends:>,precedes:<,nbsp:;
set nobackup
set noswapfile
set number
set ruler
set shiftwidth=4
set showcmd
set showmatch
set showmode
set smartcase
set spell
set tabstop=4
set title
set virtualedit=onemore
set whichwrap=h,l
set wildmode=list:longest
set wrapscan

syntax on
syntax enable

colorscheme molokai
set t_Co=256

inoremap <C-e> <esc>
vnoremap <C-e> <esc>

call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'Yggdroot/indentLine'
    Plug 'rking/ag.vim'
call plug#end()

let g:indentLine_faster = 1
let g:indentLine_char = '|'
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag -i --nocolor --hidden -g "" %s | sed "s/\^M//g"'
endif

