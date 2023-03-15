""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype on                  " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'gcmt/wildfire.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'ap/vim-css-color'
Plug 'ludovicchabant/vim-gutentags'
Plug 'preservim/tagbar'
Plug 'tpope/vim-fugitive'

" All of your Plugins must be added before the following line
call plug#end()              " required
filetype plugin on           " required
filetype indent off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color schemes
colorscheme mortel_solarium

set termguicolors   " enable true color (24 bit colors)
set number          " line numbers
set t_ut=           " Fixes bug causubg background not to be redrawn
set hlsearch        " highlight search results

" remove hl when done searching on screen refresh
nnoremap <C-l> <C-l>:nohlsearch<CR>

set cursorline

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
set autoindent nocindent nosmartindent

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
set wildmenu
set wildmode=longest:full,full

" Fix for bug causing vim to enter into replace mode on startup
set t_u7=

set ttymouse=xterm2
set mouse=a

set timeoutlen=1000 ttimeoutlen=0 " fix delay after esc
"set colorcolumn=80 " set right margin marker
set nowrap " disable line wrapping

" remove yank on delete (working again)
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP

" leader remap
let mapleader=" "

" ctrl space to autocomplete
" inoremap <C-Space> asd

nnoremap <Leader><Leader> zz

" remap so C-d goes down half a page while C-e goes up half a page
"nnoremap <C-e> <C-u>

" go to definition (ctags) and center
nnoremap <C-f> g<C-]>zz

" center cursor when jumping forwards or backwards in jumplist
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Don't move to next occurance with *
nnoremap * *N

" visual studio style 'next occurance' selection
nnoremap <C-d> *Ncgn

" remap tab switching, buffer switching and split focus
map åå <C-W><C-W>
map ö :bprevious<CR>
map ä :bnext<CR>
" map Å :buffers<CR>
map Å :buffers<CR>:buffer<Space>
nnoremap Q :bp\|bd #<CR>

" remap FZF plugin shortcut
nnoremap Ö :FZF<CR>
" nnoremap Ö :Explore<CR>
"nnoremap Ä :TagbarToggle<CR>åå
nnoremap Ä :Rg<CR>

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

set scrolloff=5

" Make next searched word appear near center
" function! CenteredFindNext(forward)
"     " save the current value for later restore
"     let s:so_curr=&scrolloff
"     set scrolloff=20
"     try
"         if a:forward
"             silent normal! n
"         else
"             silent normal! N
"         endif
"     finally
"         " restore no matter what
"         let &scrolloff=s:so_curr
"     endtry
" endfunction
" nnoremap <silent>n :call CenteredFindNext(1)<CR>
" nnoremap <silent>N :call CenteredFindNext(0)<CR>

" search current keyword with tab
"nnoremap <Tab> *
"nnoremap <S-Tab> N

" replace all instances of word under cursor or selection.
nnoremap <Leader><Tab> *:%s///g<Left><Left>
vnoremap <Leader><Tab> "hy:%s/<C-r>h//g<left><left>

" comma to get a shell
map , :sh<CR>

" remap right and left arrow keys to move by word (w, b). I'm sorry vim enthusiasts
" Switch `j` and `h`, Remap left and right arrow keys to move by word staying within the line
function! Rw()
    let last = line('.')
    norm w
    if line('.') != last
        norm b$
    endif
endfunction

function! Re()
    let last = line('.')
    norm e
    if line('.') != last
        norm b$
    endif
endfunction

function! Lb()
    let last = line('.')
    norm b
    if line('.') != last
        norm w
    endif
endfunction

nnoremap j h
nnoremap h j
nnoremap <silent> <Right> :call Rw()<CR>
nnoremap <silent> <Left> :call Lb()<CR>
nnoremap <silent> <C-Right> :call Re()<CR>
nnoremap <silent> <C-Left> :call Re()<CR>
"nnoremap <expr> <Right> col('.') == (col('$') - 1) \|\| getline('.')[col('.')-1:] =~# '^\S\+$' ? '$' : 'w'
"nnoremap <expr> <Right> col('.') == (col('$') - 1) \|\| getline('.')[col('.')-1:] =~# '^[^[:keyword:]]\+$\\|^\k\+$' ? '$' : 'w'
vnoremap j h
vnoremap h j
vnoremap <expr> <Right> getline('.')[col('.') :] =~# '\s\S' ? 'e' : '$'
vnoremap <expr> <Left> getline('.')[:col('.') + 1] =~# '\S\s' ? 'b' : '^'
vnoremap <expr> <C-Right> getline('.')[col('.') :] =~# '\s\S' ? 'e' : '$'
vnoremap <expr> <C-Left> getline('.')[:col('.') + 1] =~# '\S\s' ? 'b' : '^'


" paste at end of line with space
"nnoremap P A <esc>p

" center after G
nnoremap G Gzz

nnoremap k j
vnoremap k j

command! W :w

" folding
set foldmethod=indent
set foldlevel=99

" tab to autocomplete
inoremap <expr> <Tab> getline('.')[col('.')-2] =~# '\S' ? '<C-n>' : '<Tab>'

" tagbar toggle on enter
nmap <F8> :TagbarOpenAutoClose<CR>

" toggle paste mode
set pastetoggle=<F10>

" hide buffers instead of closing
set hidden

" automatically reload/refresh files when they are changed
set autoread

" wildfire (generic select inside) objects
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip", "it"]

" highlight trailing whitespaces
" highlight RedundantSpaces ctermbg=red guibg=red
" match RedundantSpaces /\s\+$/
nnoremap <F2> :/\s\+$<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,c   :-1read $HOME/.vim/templates/template.c
nnoremap ,cpp :-1read $HOME/.vim/templates/template.cpp
nnoremap ,h   :-1read $HOME/.vim/templates/template.h

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:netrw_sort_sequence = ''
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_liststyle = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:opamshare = substitute(system('opam var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
setglobal complete-=i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Termdebug/gdb stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packadd termdebug
let g:termdebug_wide=1
nnoremap <F6> :Termdebug<CR><C-w>l:vertical resize +20<CR>:resize +30<CR>
