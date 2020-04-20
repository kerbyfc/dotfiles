" use utf-8 encoding
set encoding=UTF-8

" Projects
set exrc

" Colorscheme
syntax on
colorscheme one

" Font
set nowrap

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
set relativenumber

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

" scroll
set scrolloff=5

" Enable mouse
set mouse=a

" Following
set foldmethod=syntax
set foldlevelstart=20 " All folds open when opening a file

" Node
let g:node_host_prog = expand('~/.nvm/versions/node/v12.16.1/bin/neovim-node-host')

set showcmd
let mapleader=""
let maplocalleader=","

" get correct json comment highlighting
au FileType json syntax match Comment +\/\/.\+$+

" automatically apply vim scripts changes
au FileWritePost *.vim :source %

" Автоматическое удаление висячих пробелов при сохранении
autocmd BufWritePre * %s/\s\+$//e
