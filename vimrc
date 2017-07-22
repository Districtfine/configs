set nocompatible              " be iMproved, required filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

"-----MY PLUGINS-----"

Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'chriskempson/base16-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"---------END----------"
call vundle#end()            " required
filetype plugin indent on    " required

"--------My Changes---------"
"Hotkeys
inoremap jj <Esc>
set pastetoggle=<F2>


let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_powerline_fonts = 1
set guifont=Deja\ Vu\ Sans\ Mono\ for\ Powerline\ 11
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
	colorscheme solarized
endif

syntax enable " Turn on syntax highlighting  
set number
:set guioptions-=m  "remove menu bar
:set guioptions-=T  "remove toolbar
:set guioptions-=r  "remove right-hand scroll bar
:set guioptions-=L  "remove left-hand scroll bar


"Turn on spellcheck if its a .txt file or .tex file
autocmd BufNewFile,BufRead *.tex set spell
autocmd BufNewFile,BufRead *.txt set spell

"Make python behaviour better
au BufNewFile,BufRead *.py
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"Misc
set hidden " Leave hidden buffers open  
set history=200 "by default Vim saves your last 8 commands.  We can handle more
:set tabstop=2 shiftwidth=2
