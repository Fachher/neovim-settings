" ================== Plugins ===================
call plug#begin('~/.config/nvim/plugged')
	Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
	Plug 'scrooloose/nerdcommenter'
	Plug 'dracula/vim', { 'as': 'dracula' }
	Plug 'jiangmiao/auto-pairs'
	Plug 'kien/ctrlp.vim'
	Plug 'Valloric/YouCompleteMe'
	Plug 'vim-airline/vim-airline'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'tpope/vim-surround'
	Plug 'tpope/vim-fugitive'
	Plug 'rust-lang/rust.vim'
	Plug 'majutsushi/tagbar'
	Plug '907th/vim-auto-save'
	Plug 'rking/ag.vim'
call plug#end()

 "================== Vim configuration ===========

set autoread
set nowrap
set number
set tabstop=4
set shiftwidth=4
set lazyredraw
set ttyfast
set cursorline
set splitright
set splitbelow

set mouse=a
set wildignore+=*.o,*.bin,*.class,*.a,*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store,node_modules/**
set exrc
set secure

let mapleader = ","
let g:mapleader = ","

syntax on
syntax enable
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
hi Visual  guifg=#FFFFFF guibg=green gui=none

" ================== Keymappings ===============
vnoremap <leader>y "+y
nnoremap <leader>Y "+yg_
nnoremap <leader>y "+y
nnoremap <leader>yy "+yy
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
nmap <leader>w :w!<cr>
nnoremap <leader>q :copen<CR>
nmap <leader>s :Ag! ""<left>
map <silent> <leader><cr> :noh<cr>
nnoremap <silent> <Esc><Esc> :close<CR> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
map <M-.> :vsplit<cr>
map <C-space> <C-f>
"map <space> :
"nmap <leader>m :w!<cr>:make<cr>
nmap <leader>m :make<cr>

"============== Plugin configuration =============
map <leader>nn :NERDTreeToggle<CR>
color dracula
let g:ctrlp_working_path_mode = 'r'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.hg$\|\.svn$\|bower_components$\|dist$\|node_modules$\|project_files$\|test$',
  \ }
let g:ctrlp_mruf_relative = 1
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_working_path_mode=1
set omnifunc=syntaxcomplete#Complete
let g:tagbar_ctags_bin = '/usr/local/Cellar/ctags/5.8_1/bin/ctags'
let g:tagbar_autofocus = 1
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>
nnoremap <leader>e :CtrlPMRU <CR>
nnoremap <leader>f :CtrlP <CR>
nmap <F8> :TagbarToggle<CR>
let g:auto_save = 1
let g:auto_save_events = ["InsertLeave"]
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"
hi CursorLine cterm=None ctermbg=blue ctermfg=white guibg=darkred guifg=white
let g:deoplete#enable_at_startup = 1
