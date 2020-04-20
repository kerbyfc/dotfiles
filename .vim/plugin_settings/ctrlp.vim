if match(&runtimepath, 'ctrlp') != -1
  let ctrlp_follow_symlinks = 1
  let g:ctrlp_working_path_mode = 'ra'
  let g:ctrlp_use_caching = 0

  " Note: by default, wildignore and g:ctrlp_custom_ignore only apply when globpath() is used to scan for files
  " thus these options do not apply when a command defined with g:ctrlp_user_command is being used.
  " let g:ctrlp_user_command = 'find %s -type f'
  " if executable('ag')
  "   let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  " endif

  set wildignore+=*/node_modules/*
  set wildignore+=*/build/*
  set wildignore+=*/cache/*
  set wildignore+=*/vendor/*
  set wildignore+=*/lib/*

  " Performance optimisation.
  let g:ctrlp_clear_cache_on_exit = 1
  " Пробуем прыгнуть на уже открытый буффер <C-t>
  let g:ctrlp_switch_buffer = 'T'

  let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

  let g:ctrlp_prompt_mappings = {
  \    'PrtInsert("c")': ['<C-v>', '<insert>'],
  \}
endif
