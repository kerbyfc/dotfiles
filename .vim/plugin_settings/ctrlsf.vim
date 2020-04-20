if match(&runtimepath, 'ctrlsf') != -1
  let g:ctrlsf_default_root = 'project'
  let g:ctrlsf_search_mode = 'async'
  let g:ctrlsf_position = 'bottom'
  let g:ctrlsf_winsize = '100%'
  let g:ctrlsf_auto_focus = {
        \ "at": "start"
        \ }

  let g:ctrlsf_ignore_dir = [
        \ "node_modules",
        \ "bower_components",
        \ "cache",
        \ "vendor",
        \ "lib",
        \ "build",
        \ "dist"
        \ ]

  map <S-D-f> :CtrlSF<space>
  map <D-f> :CtrlSFToggle<CR>
endif
