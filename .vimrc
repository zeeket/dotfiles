execute pathogen#infect() 
"dont put anything before this line https://github.com/tpope/vim-pathogen
set nocompatible

se nu
"except for diff
if &diff
				set nonumber
endif

set clipboard=unnamed
syntax on
filetype plugin indent on
"necessary for multiple encodings
set encoding=utf-8
"warning: crash = lose ur unsaved changes
set noswapfile
set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set nostartofline
set ruler
"always display status line, even if only 1 window displayed
set laststatus=2
set confirm
set mouse=a

"map Y to act like D and C, ie to yank until EOL, rather than act as yy, which
"is the default
map Y y$
