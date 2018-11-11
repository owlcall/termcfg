
set background=dark
colorscheme theme

" Enable the tabline extension which shows all buffers
let g:airline_theme = "airtheme"

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#buffer_nr_format = ' %s '
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#show_splits = 0
let g:airline_symbols_ascii = 1

let g:airline_section_a = ''		" mode/crypt/paste/spell
let g:airline_section_b = ''		" branch
"let g:airline_section_c = '%t'		" bufferline or filename
let g:airline_section_x = ''		" tagbar/filetype/virtualenv
let g:airline_section_y = ''		" encoding/fileformat
let g:airline_section_z = '%l : %v' " line : column indicator
let g:airline_section_error   = ''	" errors notification
let g:airline_section_warning = ''	" warnings notification
let g:airline_powerline_fonts = 0	" disable powerline fonts

" Ensure the vertical bars match the airline colors in the horizontal highlights
hi VertSplit ctermbg=238 ctermfg=238

