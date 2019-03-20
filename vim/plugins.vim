
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'gmarik/Vundle.vim'
	"Plugin 'airblade/vim-gitgutter'
  "Plugin 'ludovicchabant/vim-gutentags'
  Plugin 'christoomey/vim-tmux-navigator'
  Plugin 'kien/ctrlp.vim'
	Plugin 'scrooloose/nerdcommenter'
	Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'google/vim-searchindex'
  Plugin 'SirVer/ultisnips'
  Plugin 'honza/vim-snippets'
call vundle#end()            " required

filetype plugin indent on

if has ('autocmd')
	augroup RestoreCursor	" Restore cursor position when opening files
		autocmd!
		autocmd BufReadPost * call setpos(".", getpos("'\""))|normal zz
	augroup END

  autocmd Filetype python setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
  autocmd Filetype markdown setlocal spell spelllang=en_us

	autocmd WinEnter * set cursorline		" Highlight cursor line
	autocmd WinLeave * set nocursorline		" Highlight cursor line

  "autocmd CursorMoved * exe printf('match CursorKeyword /\V\<%s\>/', escape(expand('<cword>'), '/\'))

  "autocmd BufRead,BufNewFile * setlocal textwidth=80
endif

