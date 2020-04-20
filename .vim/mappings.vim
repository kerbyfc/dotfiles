" One of the most annoying things about vim was that I frequently typed :W instead of :w.
command! W w

" Поиск файлов
nnoremap <D-t> :CtrlP<CR>
nnoremap <D-b> :CtrlPMRUFiles<CR>

" Показать/скрыть искомый текст
nnoremap <S-D-/> :set hlsearch!<CR>

" Сброс выделения
nnoremap <esc> :noh<CR><esc>
nnoremap <esc>^[ <esc>^[

" Табы
nnoremap <D-w> :tabclose<CR>
nnoremap <D-n> :tabe %<CR>
nnoremap <S-D-}> :tabnext<CR>
nnoremap <S-D-{> :tabprevious<CR>
nnoremap <D-right> :tabnext<CR>
nnoremap <D-left> :tabprevious<CR>

" Скрол
nnoremap <D-j> 15<C-e>
nnoremap <D-k> 15<C-y>
vnoremap <D-j> 15<C-e>
vnoremap <D-k> 15<C-y>
nnoremap <D-l> 10zl
nnoremap <D-h> 10zh
vnoremap <D-l> 10zl
vnoremap <D-h> 10zh

" Попап автокомплита
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
" Навигация курсора в режиме ввода
inoremap <C-l> <Right>
inoremap <C-h> <Left>
inoremap <C-j> <Down>
inoremap <C-k> <Up>
inoremap <D-right> <C-o>A
inoremap <D-left> <C-o>^

" Перемещение строк
nnoremap <S-D-j> :m .+1<CR>==
nnoremap <S-D-k> :m .-2<CR>==
inoremap <S-D-j> <Esc>:m .+1<CR>==gi
inoremap <S-D-k> <Esc>:m .-2<CR>==gi
vnoremap <S-D-j> :m '>+1<CR>gv=gv
vnoremap <S-D-k> :m '<-2<CR>gv=gv

" Изменение размеров сплитов <A-l> <A-h>
nnoremap ¬ :call animate#window_delta_width(10)<CR>
nnoremap ˙ :call animate#window_delta_width(-10)<CR>
nnoremap ˚ :call animate#window_delta_height(5)<CR>
nnoremap ∆ :call animate#window_delta_height(-5)<CR>

" Создание сплитов
nnoremap <C-\> :vsplit<CR>
nnoremap <C-'> :split<CR>
