if empty(glob('~/dotfiles/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/dotfiles/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" I use vim-plug for pluggins: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Theme (colourscheme)
Plug 'rakr/vim-one'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf'

" Сессии
Plug 'thaerkh/vim-workspace'

" Управление окнами
Plug 'camspiers/lens.vim'

" Форматирование кода
Plug 'editorconfig/editorconfig-vim'

" A tree explorer.
Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'kristijanhusak/defx-icons'

" Табы
Plug 'gcmt/taboo.vim'

" Fuzzy finder
Plug 'ctrlpvim/ctrlp.vim'

" Find text in files
Plug 'dyng/ctrlsf.vim'

" Навигация курсора по коду
Plug 'bkad/CamelCaseMotion'
Plug 'easymotion/vim-easymotion'

" Multiple cursors
Plug 'terryma/vim-multiple-cursors'

" A solid language pack (syntax highlighting)
Plug 'sheerun/vim-polyglot'

" Autocomplite
Plug 'neoclide/coc.nvim', {'branch': 'release'}

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

" Linting
Plug 'dense-analysis/ale'

" Initialize plugin system
call plug#end()
