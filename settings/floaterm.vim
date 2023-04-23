"let g:floaterm_keymap_new    = '<F8>'
"let g:floaterm_keymap_prev   = '<F9>'
"let g:floaterm_keymap_next   = '<F10>'
"let g:floaterm_keymap_toggle = '<F12>'
let g:floaterm_position = 'topright'
let g:floaterm_width = 0.6
let g:floaterm_height = 0.6
let g:floaterm_title = 'Terminal $1/$2'
let g:floaterm_wintype = 'float'
let g:floaterm_rootmarkers = ['.pro']
if has('win32')
	let g:floaterm_shell = 'powershell -nologo'
endif

" Set color
"hi Floaterm guibg=Grey15
"hi FloatermBorder guifg=Orange guibg=DarkGreen
" Set floaterm window's background to black

hi Floaterm guibg=black
" Set floating window border line color to cyan, and background to orange
hi FloatermBorder guifg=Blue guibg=cyan
"hi FloatermNC guibg=darkred

autocmd User FloatermOpen        " triggered after opening a new/existed floater

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to manage terminals
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open a new terminal 
nnoremap <silent> <F4>   :FloatermNew<CR>
tnoremap <silent> <F4>    <C-\><C-n>:FloatermNew<CR>

" Kill current terminal 
nnoremap <silent> <F5> :FloatermKill<CR>:FloatermPrev<CR>
tnoremap <silent> <F5> <C-\><C-n>:FloatermKill<CR>:FloatermPrev<CR>

" Navigation next and previous terminal 
nnoremap <silent> <F6> :FloatermNext<CR>
tnoremap <silent> <F6> <C-\><C-n>:FloatermNext<CR>
nnoremap <silent> <F7> :FloatermPrev<CR>
tnoremap <silent> <F7> <C-\><C-n>:FloatermPrev<CR>

" Toggle terminal
nnoremap <silent> <F8> :FloatermToggle<CR>
tnoremap <silent> <F8> <C-\><C-n>:FloatermToggle<CR>

" Focus terminal 
nnoremap <silent> <leader> <C-\><C-n><C-W><Left>
tnoremap <silent> <leader> <C-\><C-n><C-W><Left>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Hotkey to run other console apps
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Git 
nnoremap <silent> <leader>gl :FloatermNew! --position=bottomright --height=0.95 --width=0.7 --title='GitLog' git lg<CR>
