" SET OPTION
    set nu
    set showmode
    set title
    set ruler
    set showcmd
    set showmatch
    set cursorline
    set list
    set tabstop=4
    set autoindent
    set expandtab
    set shiftwidth=4
    set autoindent
    set ignorecase
    set smartcase
    set hlsearch
    set confirm
    set clipboard+=unnamed
    set backspace=indent,eol,start
" NEO BUNDLE PLUGINS
    set runtimepath+=~/.vim/bundle/neobundle.vim/
    call neobundle#begin(expand('~/.vim/bundle/'))
        NeoBundleFetch 'Shougo/neobundle.vim'
        NeoBundle 'Townk/vim-autoclose'
        NeoBundle 'mattn/emmet-vim'
        " NeoBundle 'scrooloose/syntastic'
        NeoBundle 'guns/vim-clojure-static'
        NeoBundle 'vim-ruby/vim-ruby'
        call neobundle#end()
        filetype plugin indent on
    NeoBundleCheck
" SYNTAX
    syntax on
    syntax enable
    highlight Comment ctermfg=DarkCyan
    colorscheme molokai
" SWITCH CORON SEMI-CORON
    noremap ; :
    noremap : ;
" EXIT INSERT & VISUAL
    inoremap <C-e> <esc>
    vnoremap <C-e> <esc>

