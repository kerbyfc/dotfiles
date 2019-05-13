" I use vim-plug for pluggins: https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Theme (colourscheme)
Plug 'morhetz/gruvbox'

" A tree explorer.
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Fuzzy finder
Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

" An asynchronous process manager.
Plug 'Shougo/vimproc.vim'

" Find text in files
Plug 'dyng/ctrlsf.vim'

" A solid language pack (syntax highlighting)
Plug 'sheerun/vim-polyglot'

" Syntax checking 
Plug 'w0rp/ale', { 'do': 'npm install -g eslint babel-eslint eslint-plugin-react eslint-config-react-app eslint-plugin-import eslint-plugin-flowtype eslint-plugin-jsx-a11y eslint-plugin-react-hooks'}

" TypeScript support 
Plug 'mhartington/nvim-typescript', {'do': 'npm install -g typescript && ./install.sh'}

" JavaScript support
" Autocomplite for deoplete
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }

" PHP support
Plug 'lvht/phpcd.vim', { 'for': 'php', 'do': 'composer install && pecl install msgpack' }

" Autocomplite
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
  Plug 'Shougo/deoplete.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
endif

" Commenting
Plug 'tpope/vim-commentary'

" Adds quotes and brackeds around a selected block of text
Plug 'mrded/vim-wrapper'

" TextMate's snippets features  
Plug 'tomtom/tlib_vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'

" Status bar
" Plug 'itchyny/lightline.vim'
" @TODO: Alternative to try.
Plug 'vim-airline/vim-airline'

" Generates HTML the same way as in PhpStorm.
Plug 'mattn/emmet-vim'

" Highlights words under the cursor: http://www.vim.org/scripts/script.php?script_id=4306
Plug 'mrded/vim-hi-cursor-words'

" Allows toggling bookmarks per line
Plug 'MattesGroeger/vim-bookmarks'

" Highlight git changes
Plug 'airblade/vim-gitgutter'

" Git wrapper
Plug 'tpope/vim-fugitive'

" Close all buffers except visible 
Plug 'Asheq/close-buffers.vim'

" Initialize plugin system
call plug#end()
