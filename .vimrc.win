if has('vim_starting')
    if !filereadable(expand("~/.vim/autoload/plug.vim"))
        echo "Install vim-plug..."
        :call system("mkdir -p ~/.vim/autoload")
        :call system("curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
    endif

    call plug#begin('~/.vim/plugged')
        Plug 'Yggdroot/indentLine'
        Plug 'ctrlpvim/ctrlp.vim'
        Plug 'mattn/emmet-vim'
        Plug 'rking/ag.vim'
        Plug 'tomasr/molokai'
    call plug#end()
endif

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
set laststatus=2
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
set t_Co=256
set tabstop=4
set title
set virtualedit=onemore
set whichwrap=h,l
set wildmode=list:longest
set wrapscan

syntax on
syntax enable

inoremap <C-e> <esc>
vnoremap <C-e> <esc>

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap " ""<LEFT>
inoremap ' ''<LEFT>
vnoremap { "zdi^V{<C-R>z}<ESC>
vnoremap [ "zdi^V[<C-R>z]<ESC>
vnoremap ( "zdi^V(<C-R>z)<ESC>
vnoremap " "zdi^V"<C-R>z^V"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

colorscheme molokai

let g:indentLine_faster = 1
let g:indentLine_leadingSpaceEnabled = 1
let g:indentLine_leadingSpaceChar = '.'

if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag -i --nocolor --hidden -g "" %s | sed "s/\^M//g"'
endif

