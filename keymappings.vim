
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
map <leader>b :CtrlPBuffer<cr>
nmap <leader>w :w!<cr>
nmap <leader>r :%s//g<left><left>
vmap <leader>r :s//g<left><left>
nnoremap <leader>q :copen<CR>
nmap <leader>f :Ag! ""<left>
map <silent> <leader><cr> :noh<cr>
nnoremap <silent> <Esc><Esc> :close<CR> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <M-.> :vsplit<cr>
map <space> <C-f>
map <f12> :q!<cr>
map ff :NERDTreeFind<cr>
"map <space> :
"nmap <leader>m :w!<cr>:make<cr>
nmap <leader>m :make<cr>
nmap <leader>s /^\s*
vmap <enter> :s/\s/\r/g<cr>:noh<cr>

"============== Plugin configuration =============
map <leader>nn :NERDTreeToggle<CR>
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>
nnoremap <leader>h :CtrlPMRU <CR>
nnoremap <leader>f :CtrlP <CR>
nmap <F8> :TagbarToggle<CR>

