if match(&runtimepath, 'nerdtree') != -1

  " Показать / скрыть дерево файлов
  function ToggleNerdTree()
    if (exists('t:NERDTreeBufName') && bufwinnr(t:NERDTreeBufName) != -1)
      exe ":NERDTreeToggle"
    else
      if @% == ""
        exe ":NERDTreeToggle"
      else
        exe ":NERDTreeFind"
      endif
    endif
  endfunction

  map <C-.> :call ToggleNerdTree()<CR>

  call NERDTreeAddKeyMap({
    \ 'key':           'D',
    \ 'callback':      'NERDTreeEnterDirectoryAndCD',
    \ 'quickhelpText': 'Enter directory and cd into it'})

  function! NERDTreeEnterDirectoryAndCD()
    let node = g:NERDTreeDirNode.GetSelected()

    exec 'cd ' . node.path.str({'format': 'Cd'})
    NERDTreeCWD
  endfunction

  let NERDTreeMarkBookmarks = 1
  let NERDTreeShowHidden = 1
  let NERDTreeShowLineNumbers = 0
  let NERDTreeStatusline = 0
  let NERDTreeMinimalUI = 1
  let NERDTreeAutoDeleteBuffer = 1
  let NERDTreeQuitOnOpen = 3

  au VimLeave * :tabdo NERDTreeClose
  au FileWritePost *.vim :source %
endif
