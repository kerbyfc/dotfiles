if match(&runtimepath, 'deoplete') != -1
  let g:deoplete#enable_at_startup = 1

  autocmd CompleteDone * if pumvisible() == 0 | pclose | endif
endif