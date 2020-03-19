if empty(glob('~/dotfiles/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/dotfiles/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" I use vim-plug for pluggins: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Theme (colourscheme)
Plug 'rakr/vim-one'

Plug 'thaerkh/vim-workspace'

" A tree explorer.
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Find text in files
Plug 'dyng/ctrlsf.vim'
Plug 'easymotion/vim-easymotion'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" A solid language pack (syntax highlighting)
Plug 'sheerun/vim-polyglot'

" Autocomplite
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'neoclide/coc-tsserver', {'do': 'npm install'}
Plug 'neoclide/coc-prettier', {'do': 'npm install'}
Plug 'neoclide/coc-snippets', {'do': 'npm install'}
Plug 'neoclide/coc-eslint', {'do': 'npm install'}
Plug 'neoclide/coc-json', {'do': 'npm install'}
Plug 'neoclide/coc-eslint', {'do': 'npm install'}

" Extract a variable
Plug 'fvictorio/vim-extract-variable'

" Commenting
Plug 'tpope/vim-commentary'

" Adds quotes and brackeds around a selected block of text
Plug 'mrded/vim-wrapper'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Bookmarks
Plug 'MattesGroeger/vim-bookmarks'

" Highlights words under the cursor
Plug 'RRethy/vim-illuminate'

" Highlight git changes
Plug 'airblade/vim-gitgutter'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Highlighte code levels
Plug 'thiagoalessio/rainbow_levels.vim'

" Languages
Plug 'flowtype/vim-flow'

" Linters
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()
