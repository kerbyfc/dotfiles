" NoCompatible {{{1
set nocp

let g:vim_home = get(g:, 'vim_home', expand('~/dotfiles/.vim/'))

let g:coc_node_path = "/Users/crewman/.nvm/versions/node/v12.13.1/bin/node"

" Load all vim configs {{{1
let config_list = [
      \ 'plugins.vim',
      \ 'config.vim',
      \ 'mappings.vim',
      \ 'plugin_settings/*.vim'
      \]
for files in config_list
  for f in glob(g:vim_home.files, 1, 1)
    exec 'source' f
  endfor
endfor

" Set at the end to work around 'exrc'
set secure
