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
Plugin 'Valloric/YouCompleteMe'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'

"---------END----------"
call vundle#end()            " required
filetype plugin indent on    " required

"--------My Changes---------"

"Hotkeys
inoremap jj <Esc>
set pastetoggle=<F2>
map <silent> <C-n> :NERDTreeToggle<CR>

"airline changes, to get these to work install these https://github.com/powerline/fonts
let g:airline_powerline_fonts = 1
set guifont=Deja\ Vu\ Sans\ Mono\ for\ Powerline\ 11
set noshowmode


"utilisnips changes, got this code to make utilisnips and YCM to play nice here https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
function! g:UltiSnips_Complete()
    call UltiSnips#ExpandSnippet()
    if g:ulti_expand_res == 0
        if pumvisible()
            return "\<C-n>"
        else
            call UltiSnips#JumpForwards()
            if g:ulti_jump_forwards_res == 0
               return "\<TAB>"
            endif
        endif
    endif
    return ""
endfunction

au BufEnter * exec "inoremap <silent> " . g:UltiSnipsExpandTrigger . " <C-R>=g:UltiSnips_Complete()<cr>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-e>"
" this mapping Enter key to <C-y> to chose the current highlight item 
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


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


"Turn on spellcheck if its a .txt file or .tex file
autocmd BufNewFile,BufRead *.tex set spell
autocmd BufNewFile,BufRead *.txt set spell

"Make python behaviour better
au BufNewFile,BufRead *.py
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix

nnoremap <buffer> <F9> :exec '!python' shellescape(@%, 1)<cr>

"Misc
set hidden " Leave hidden buffers open  
set history=200 "by default Vim saves your last 8 commands.  We can handle more
:set tabstop=2 shiftwidth=2
