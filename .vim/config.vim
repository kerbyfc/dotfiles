" use utf-8 encoding
set encoding=utf-8

" Projects
set exrc

" Colorscheme
syntax on

" Text search
set nohlsearch
set ignorecase

" Don't try to be vi compatible
set nocompatible

" Enable spell check
set spelllang=en_gb

" Fix problem with backspace
set backspace=2

" show line numbers
set number
set numberwidth=2

" Highlight current line
set cursorline

" Highlight all search matches
set hlsearch

" Tab settings
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Split screen
set splitbelow
set splitright

" Enable mouse
set mouse=a

" Following
set foldmethod=syntax
set foldlevelstart=20 " All folds open when opening a file

" Colors
colorscheme one

" Font
set nowrap
if exists('g:vv')
  VVset fontfamily=Fira\ Code
  VVset fontsize=16
endif


" get correct json comment highlighting
autocmd FileType json syntax match Comment +\/\/.\+$+
