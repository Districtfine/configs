set nocompatible              " be iMproved, required filetype off                  " required
"--------My Changes---------"
set ignorecase
set smartcase
set encoding=utf-8
"Hotkeys
inoremap jj <Esc>
set pastetoggle=<F2>
map <silent> <C-n> :NERDTreeToggle<CR>
nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"Improve splitting behaviour
set splitbelow
set splitright
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

"Remove auto commenting behaviour
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"Theme settings
set t_Co=256
if has ('gui_running')
	colorscheme base16-default-dark
endif
syntax enable " Turn on syntax highlighting  
set number
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar


	
"Misc
set hidden " Leave hidden buffers open  
set history=200 "by default Vim saves your last 8 commands.  We can handle more
:set tabstop=3 shiftwidth=3 expandtab softtabstop=3


"--------File Specific Behaviour---------"
"Make python behaviour better
au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

autocmd BufNewFile,BufRead *.tex set spell "Turn on spellcheck if its a .txt file or .tex file
if has('mouse')
  set mouse=a
endif
