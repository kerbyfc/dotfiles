if match(&runtimepath, 'airline') != -1
  let g:airline#extensions#tabline#enabled = 1
  let g:airline#extensions#tabline#formatter = 'jsformatter'
  let g:airline#extensions#tabline#show_tab_type = 0
  let g:airline#extensions#tabline#show_close_button = 0
  let g:airline#extensions#tabline#show_splits = 0
  let g:airline#extensions#tabline#show_tab_nr = 0
  let g:airline#extensions#tabline#show_buffers = 0
  let g:airline#extensions#tabline#ignore_bufadd_pat = 'gundo|undotree|vimfiler|tagbar|nerd_tree|startify|!'

  let g:airline_section_a = ''
  let g:airline_section_b = ''
  let g:airline_section_c = '%F'
  let g:airline_section_x = ''
  let g:airline_section_y = ''
  let g:airline_section_z = ''
endif
