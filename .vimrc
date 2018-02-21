if has('vim_starting')
    if !filereadable(expand("~/.vim/autoload/plug.vim"))
        echo "Install vim-plug..."
        :call system("mkdir -p ~/.vim/autoload")
        :call system("curl -fLo ~/.vim/autoload/plug.vim https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim")
    endif
endif

call plug#begin('~/.vim/plugged')
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'editorconfig/editorconfig-vim'
    Plug 'mattn/emmet-vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'rking/ag.vim'
    Plug 'roman/golden-ratio'
    Plug 'tomasr/molokai'
call plug#end()

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
set scrolloff=5
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

autocmd QuickFixCmdPost *grep* cwindow

" Disable keys
noremap <BS> <ESC>
noremap! <BS> <ESC>
noremap <Del> <ESC>
noremap! <Del> <ESC>
noremap <Up> <ESC>
noremap! <Up> <ESC>
noremap <Down> <ESC>
noremap! <Down> <ESC>
noremap <Left> <ESC>
noremap! <Left> <ESC>
noremap <Right> <ESC>
noremap! <Right> <ESC>

" Delete search highlight
nnoremap <ESC><ESC> :nohlsearch<CR>
vnoremap <ESC><ESC> :nohlsearch<CR>

" Search selected text
vnoremap * y/<C-r>"<CR>

" Enclose selected text
vnoremap { "zdi{<C-R>z}<ESC>
vnoremap [ "zdi[<C-R>z]<ESC>
vnoremap ( "zdi(<C-R>z)<ESC>
vnoremap " "zdi"<C-R>z"<ESC>
vnoremap ' "zdi'<C-R>z'<ESC>

colorscheme molokai

let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag -i --nocolor --hidden -g "" %s | sed "s/\^M//g"'
endif
