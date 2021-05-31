
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
colorscheme mortel  " vscode style color scheme
set number          " line numbers

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tabs
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
set softtabstop=4   " Sets the number of columns for a TAB
set expandtab       " Expand TABs to spaces
set termguicolors   " enable true color (24 bit colors)

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" GVIM
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guioptions-=m  "remove menu bar
"set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar
set mousemodel=popup

if has('gui_running')
    set guifont=Noto\ Mono\ 11
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" custom keybinds & editor behaviour
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set timeoutlen=1000 ttimeoutlen=0 " fix delay after esc
"set colorcolumn=80 " set right margin marker
set nowrap " disable line wrapping

" remove yank on delete
nnoremap y "*y
nnoremap Y "*Y
nnoremap p "*p
nnoremap P "*P
vnoremap y "*y
vnoremap Y "*Y
vnoremap p "*p
vnoremap P "*P

" leader remap
let mapleader=" "

" remap so C-d goes down half a page while C-e goes up half a page
"nnoremap <C-e> <C-u>

" remap so C-k goes down half a page while C-i goes up half a page
nnoremap <C-i> <C-u>
nnoremap <C-k> <C-d>

" visual studio style 'next occurance' selection
nnoremap <C-d> *Ncgn

" remap tab switching, buffer switching and split focus
map åå <C-W><C-W>
nnoremap Ö :tabprevious<CR>
nnoremap Ä :tabnext<CR>
map ö :bprevious<CR>
map ä :bnext<CR>
" map Å :buffers<CR>
map Å :buffers<CR>:buffer<Space>
nnoremap Q :bp\|bd #<CR>

" page keys to walk a 6th of a page
function! ScrollChunk(move)
    let height=winheight(0)

    if a:move == 'up'
        let key="\<C-Y>"
    else
        let key="\<C-E>"
    endif

    execute 'normal! ' . height/6 . key 
endfunction

nnoremap <PageUp> :call ScrollChunk('up')<CR>
nnoremap <PageDown> :call ScrollChunk('down')<CR>

" search current keyword with tab
nnoremap <Tab> *
nnoremap <S-Tab> N

" comma to get a shell
map , :sh<CR>

" remap right and left arrow keys to move by word (w, b)
nnoremap <Left> b
nnoremap <Right> w
nnoremap j h

" toggle paste mode
set pastetoggle=<F10>

" hide buffers instead of closing 
set hidden

" automatically reload/refresh files when they are changed
set autoread

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeSortOrder=['\/$', '[[extension]]']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set completeopt-=preview
let g:ycm_enable_diagnostic_signs = 0 " default 1 - removes gutter warnings
let g:ycm_show_diagnostics_ui = 0 " default 1 - removes weird syntax highlighting
