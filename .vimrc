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
    Plug 'mileszs/ack.vim'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'rking/ag.vim'
    Plug 'roman/golden-ratio'
    Plug 'scrooloose/nerdtree'
    Plug 'tomasr/molokai'
call plug#end()

set relativenumber
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
set t_Co=256
set tabstop=4
set title
set virtualedit=onemore
set whichwrap=h,l
set wildmode=list:longest
set wrapscan
set nowrap

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

" Grep
nnoremap # :vim /

" Substitute
vnoremap %q y:cdo %s/<C-r>"/
vnoremap %y y:%s/<C-r>"/
nnoremap %s <ESC><ESC>:%s/

nnoremap & :e ++enc=

" Delete search highlight
nnoremap <ESC><ESC> :nohlsearch<CR>
vnoremap <ESC><ESC> :nohlsearch<CR>

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
let g:indent_guides_auto_colors=0
let g:indent_guides_color_change_percent = 30
let g:indent_guides_guide_size = 1
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#ff0000 ctermbg=red
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#00ff00 ctermbg=green

if executable('ag')
    let g:ctrlp_use_caching=0
    let g:ctrlp_user_command='ag -i --nocolor --hidden -g "" %s | sed "s/\^M//g"'
endif
