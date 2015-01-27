" turn filetype detection off and, even if it's not strictly
" " necessary, disable loading of indent scripts and filetype plugins
filetype off
filetype plugin indent off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set nocompatible            "Prefents VIM from being nerfed into acting like VI

let mapleader=","           "Changes Leader key into a comma instead of a backslash

set history=2000


"# Visual Options
set wildmenu
set wildignore=.svn,CVS,.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif

set ruler "Show current position
set nowrap
set cmdheight=2
set hidden "Buffer is hidden when abandoned
set showmatch

au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorcolumn
set cursorline

"# Behavior 
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

set lazyredraw " Do not redraw when executing macro

"Search related
set ignorecase
set smartcase
set hlsearch
set incsearch

set magic " For regx

"No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"Backspace
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

"# Commands
"Remove trailing whitespaces
map <Leader>, :%s/\s\+$//<CR>i

let g:html_indent_inctags = "html,body,head,tbody,div,script"

if filereadable($HOME.'/.vimrc_local')
    source $HOME/.vimrc_local
endif
