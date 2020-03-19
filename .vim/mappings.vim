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
nnoremap <D-n> :tabnew<CR>
nnoremap <D-l> :tabnext<CR>
nnoremap <D-h> :tabprevious<CR>

" Навигация по коду
nnoremap <C-j> }
nnoremap <C-k> {

