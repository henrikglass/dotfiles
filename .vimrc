""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin stuff
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype on                   " required

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
call plug#begin()

Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'tikhomirov/vim-glsl'
Plug 'gcmt/wildfire.vim'
Plug 'bkad/CamelCaseMotion'
Plug 'godlygeek/tabular'
Plug 'junegunn/goyo.vim'
Plug 'mg979/vim-visual-multi'
Plug 'vim-scripts/taglist.vim'

" All of your Plugins must be added before the following line
call plug#end()              " required
filetype plugin on           " required
filetype indent off

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" style
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Color schemes
"colorscheme mortel_solarium
colorscheme mortel_terrarium

set termguicolors   " enable true color (24 bit colors)
set number          " line numbers
set t_ut=           " Fixes bug causing background not to be redrawn
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
set wildignorecase
set wildmode=longest:full,full

" Fix for bug causing vim to enter into replace mode on startup
set t_u7=

set ttymouse=xterm2
set mouse=a

set timeoutlen=1000 ttimeoutlen=0 " fix delay after esc
"set colorcolumn=80 " set right margin marker
set nowrap " disable line wrapping

" leader remap
let mapleader='\'

" go to definition (ctags) and center
nnoremap <C-f> g<C-]>

" center cursor when jumping forwards or backwards in jumplist
nnoremap <C-o> <C-o>
nnoremap <C-i> <C-i>

" Don't move to next occurance with *
nnoremap * *N

" remove yank on delete (working again)
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP

" visual studio style 'next occurance' selection
" nnoremap <C-d> *Ncgn
let g:VM_maps = {}
let g:VM_maps['Find Under']         = '<C-d>'
let g:VM_maps['Find Subword Under'] = '<C-d>'

" search and replace what's under the cursor
nnoremap ´´ yiw:%s/<C-r>"//g<left><left>

" remap tab switching, buffer switching and split focus
map  åå <C-W><C-W>
map  <C-å><C-å> <C-W><C-W>
xmap <C-å><C-å> <C-W><C-W>
tmap <C-å><C-å> <C-W><C-W>
map ö :bprevious<CR>
map ä :bnext<CR>
map ¨¨ :tjump
nnoremap Q :bp\|bd #<CR>

" remap FZF plugin shortcut
nnoremap Ö :FZF<CR>
map Å :Buffers<CR>
nnoremap Ä :Rg<CR>
nnoremap _ :BTags<CR>
nnoremap tt :TlistToggle<CR>

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

" replace all instances of word under cursor or selection.
nnoremap <Leader><Tab> *:%s///g<Left><Left>
vnoremap <Leader><Tab> "hy:%s/<C-r>h//g<left><left>

" remap right and left arrow keys to move by word (w, b). I'm sorry vim enthusiasts
" Switch `j` and `h`, Remap left and right arrow keys to move by word staying within the line
function! Rw()
    let last = line('.')
    "norm w
    exec "norm \<Plug>CamelCaseMotion_w"
    if line('.') != last
        norm b$
    endif
endfunction

function! Re()
    let last = line('.')
    "norm e
    exec "norm \<Plug>CamelCaseMotion_e"
    if line('.') != last
        norm b$
    endif
endfunction

function! Lb()
    let last = line('.')
    "norm b
    exec "norm \<Plug>CamelCaseMotion_b"
    if line('.') != last
        norm $w
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

" change sub-word in snake_case
nnoremap cs ct_

nnoremap k j
vnoremap k j

command! W :w

" move visueal selection/current row with ctrl + shift + up/down
vnoremap <C-S-Up>   :m '<-2<CR>gv=gv
vnoremap <C-S-Down> :m '>+1<CR>gv=gv
nnoremap <C-S-Up>   :m -2<CR>
nnoremap <C-S-Down> :m +1<CR>

" indent key behavior
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" move visual selection
vnoremap <C-Up>   :m '<-2<CR>gv=gv
vnoremap <C-Down> :m '>+1<CR>gv=gv

" folding
set foldmethod=indent
set foldlevel=99

" tab to autocomplete
inoremap <expr> <Tab> getline('.')[col('.')-2] =~# '\S' ? '<C-n>' : '<Tab>'
inoremap <expr> <C-Tab> getline('.')[col('.')-2] =~# '\S' ? '<C-x><C-o>' : '<Tab>'

" tagbar toggle on enter
nmap <F8> :TagbarOpenAutoClose<CR>

" toggle paste mode
set pastetoggle=<F10>

" hide buffers instead of closing
set hidden

" automatically reload/refresh files when they are changed
set autoread
au CursorHold * checktime

" wildfire (generic select inside) objects
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip", "it"]

" highlight trailing whitespaces
" highlight RedundantSpaces ctermbg=red guibg=red
" match RedundantSpaces /\s\+$/
nnoremap <F2> :/\s\+$<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode tricks
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"Align
vnoremap A :Tabularize //<Left>
vnoremap a :Tabularize /.*/<Left><Left><Left>

vnoremap S :s///g<Left><Left><Left>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap ,c   :-1read $HOME/.vim/templates/template.c
nnoremap ,cpp :-1read $HOME/.vim/templates/template.cpp
nnoremap ,h   :-1read $HOME/.vim/templates/template.h
nnoremap ,hpp :-1read $HOME/.vim/templates/template.hpp
nnoremap ,m   :-1read $HOME/.vim/templates/template.makefile

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Terminal mode
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap tt :tabnew<CR>:terminal ++curwin<CR>
nnoremap <M-Left> gT
nnoremap <M-Right> gt
tnoremap <M-Left> <C-w>gT
tnoremap <M-Right> <C-w>gt

let g:terminal_ansi_colors = [
  \'#1e1e1e', '#CC241D', '#98971A', '#D79921',
  \'#458588', '#B16286', '#689D6A', '#D65D0E',
  \'#fb4934', '#b8bb26', '#fabd2f', '#83a598',
  \'#d3869b', '#8ec07c', '#fe8019', '#FBF1C7' ]

highlight Terminal guibg='#1e1e1e'
highlight Terminal guifg='#ebdbb2'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" C-programming
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
:command Make !make clean; make

" open in man
runtime ftplugin/man.vim
map mm :Man <C-r><C-w><CR>

" tag generation
:command Ctags !ctags -R
:autocmd BufWritePost *.cpp,*.hpp,*.c,*.h,*.adb,*.ads call
    \system('test -f tags && ctags -R --_xformat="%-16N %-10K %4n %-16F %{typeref} %{name}%{signature}" --fields=+S --sort=yes')

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Goyo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

let g:goyo_width  = 120
let g:goyo_linenr = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" netrw
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:netrw_sort_sequence = ''
let g:netrw_sort_sequence = '[\/]$,*'
let g:netrw_fastbrowse = 0
let g:netrw_banner = 0
let g:netrw_liststyle = 0

nnoremap <C-ö> :Explore<CR>

function! NetrwMapping()
    nunmap <buffer> <Right>
    nunmap <buffer> <Left>
    nmap <buffer> <Right> <CR>
    nmap <buffer> <Backspace> -^
    nmap <buffer> <Left> -^
endfunction

augroup netrw_mapping
    autocmd!
    autocmd filetype netrw call NetrwMapping()
augroup END

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:opamshare = substitute(system('opam var share'),'\n$','','''')
"execute "set rtp+=" . g:opamshare . "/merlin/vim"

set omnifunc=syntaxcomplete#Complete
set completeopt-=preview
set completeopt+=menuone
setglobal complete-=i

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Termdebug/gdb stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
packadd termdebug
let g:termdebug_wide=1
nnoremap <F6> :Termdebug<CR><C-w>l:vertical resize +20<CR>:resize +30<CR>
nnoremap ++ :Break<CR>
nnoremap -- :Clear<CR>
