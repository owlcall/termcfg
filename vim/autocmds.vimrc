
if has ('autocmd')
	augroup RestoreCursor	" Restore cursor position when opening files
		autocmd!
		autocmd BufReadPost * call setpos(".", getpos("'\""))|normal zz
	augroup END

	autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

	autocmd WinEnter * set cursorline		" Highlight cursor line
	autocmd WinLeave * set nocursorline		" Highlight cursor line
endif
