
" Positional settings
set splitbelow		" Use bottom split for a new horizontal split buffer
set splitright		" Use right split for a new vertical split buffer

" General settings
set secure
set antialias		      " Enable antialiasing on Mac OS X
set encoding=utf-8	  " Default utf-8 encoding
set history=1024	    " Increase command history
set clipboard=unnamed	" Allow us to use system clipboard"

set shortmess+=O      " file-read message overwrites previous
set shortmess+=o      " overwrite file-written messages

"let g:netrw_preview=1 " Make vertical previews default
let g:netrw_liststyle = 3
let g:netrw_winsize   = 20


if exists('&belloff')
  set belloff=all	" never ring the bell for any reason
endif

" Wildcard search ignore settings
set wildignore+=.git
set wildignore+=*~,*.swp,*.swo,*.tmp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.gz,*.tar     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.?(tags|deps|build|env|git|hg|svn)$'

" Editor formatting
set tabstop=2		" width of the TAB character
set softtabstop=2
set shiftwidth=2	" depth of single indentation level
set expandtab
set cindent		" enable advanced indentation tailored towards c-style languages
set cino+=g0	  	" indent public/private keywords after typing colon ':'
set autoindent

" Editor display
set relativenumber
set number
set hlsearch    	" Highlight search results
set cursorline		" Highlight cursor line
"set laststatus=2	" Show statusbar all the time
"set scrolloff=1		" Scroll offset of 1 line
set showmatch	  	" Show matching bracket
set wildmenu	  	" Show advanced autocompletion in command mode
set nojoinspaces	" don't autoinsert two spaces after '.', '?', '!' for join command
"set colorcolumn=80

" Keyboard response time
set ttimeoutlen=10

" Built in fatures
"set omnifunc=syntaxcomplete#Complete

" Fixes
"-------
" Fix the backspace key from getting stuck on one line
set backspace=indent,eol,start
" Allow color schemes to do bright colors without forcing bold.
if &t_Co == 8 && $TERM !~# '^linux\|^Eterm'
  set t_Co=16
endif
" Fix key bindings if running within tmux on mac
if &term =~ '^screen'
	" tmux will send xterm-style keys when its xterm-keys option is on
	execute "set <xUp>=\e[1;*A"
	execute "set <xDown>=\e[1;*B"
	execute "set <xRight>=\e[1;*C"
	execute "set <xLeft>=\e[1;*D"
endif

