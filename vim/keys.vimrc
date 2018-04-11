
" Bind leader key to <space>
let mapleader = " "
nmap \ <Leader>

" Disabling arrow keys (forming habbits!)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

"=== Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"=== Split resizing
nnoremap <Down> <C-w>-
nnoremap <Up> <C-w>+
nnoremap <Left> <C-w><
nnoremap <Right> <C-w>>

"=== Navigation bindings
"nnoremap <silent> <Leader>q :bd\|bd #<CR>	" Destroy buffer
nnoremap <silent> <S-Tab> : bp<CR>	" Previous buffer
nnoremap <silent> <Tab> : bn<CR>	" Next buffer
nnoremap <silent> <Leader>d :bp\|bd #<CR>	" Destroy buffer

"=== Quickfix navigation
"nnoremap <silent> <Leader>e :cn <CR>		" Open file/line for next error in quickfix window
"nnoremap <silent> <Leader><S-e> :cp <CR>	" Open file/line for previous error in quickfix window

"=== Display toggles
"nnoremap <silent> <leader>l :call ToggleList("Location List", 'l')<CR>
"nnoremap <silent> <leader>f :call ToggleList("Quickfix List", 'c')<CR>	" Toggle quickfix view
nnoremap <silent> <Leader><Leader> :nohlsearch<CR>						" Clear highlighting
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>							" Clear highlighting
nnoremap <silent> <C-n>	   :let [&nu, &rnu] = [!&rnu, &nu+&rnu==1]<CR>	" Toggle line numbers
nnoremap <silent> <Leader>o :e.<CR>										" Open editor window

"=== Editor bindings
"nnoremap <space> za|					" Enable folding with the spacebar
nnoremap <silent> <Leader>w :w !diff % -<CR>|	" Show differences before writing to file
