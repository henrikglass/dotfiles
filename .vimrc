
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

" requires fzf on system I think? Requires ripgrep for :Rg I think also?
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" I never use this but it looks cool
Plugin 'junegunn/goyo.vim'

" Just NerdTree
Plugin 'scrooloose/nerdtree'

" Tagbar
Plugin 'preservim/tagbar'

" generic select inside
Plugin 'gcmt/wildfire.vim'

" requires libclang
"Plugin 'xavierd/clang_complete'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" misc.
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fixes problem where vim starts in replace mode
set t_u7=

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

" enable mouse in normal mode (not GVIM)
set mouse=n

" TODO make this follow tags or something useful (does this by default?)
" nnoremap <C-LeftMouse> i

set timeoutlen=1000 ttimeoutlen=0 " fix delay after esc
"set colorcolumn=80 " set right margin marker
set nowrap " disable line wrapping

" remove yank on delete (Works? Preferrable)
nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP
" remove yank on delete (Works in some places)
" nnoremap y "*y
" nnoremap Y "*Y
" nnoremap p "*p
" nnoremap P "*P
" vnoremap y "*y
" vnoremap Y "*Y
" vnoremap p "*p
" vnoremap P "*P

" leader remap
let mapleader=" "

" capital P pastes to end of line with space
nnoremap P A <esc>p

" go to definition (ctags) and center
nnoremap <C-f> g<C-]>zz

" center cursor when jumping forwards or backwards in jumplist
nnoremap <C-o> <C-o>zz
nnoremap <C-i> <C-i>zz

" Don't move to next occurance with *
nnoremap * *Nzz

" visual studio style 'next occurance' selection
nnoremap <C-d> *Ncgn

" remap tab switching, buffer switching and split focus
map åå <C-W><C-W>
map ö :bprevious<CR>
map ä :bnext<CR>

" We can also use fzf for this but nah
map Å :buffers<CR>:buffer<Space>

" Close buffer on Q
nnoremap Q :bp\|bd #<CR>

" remap FZF plugin shortcut
nnoremap Ö :FZF<CR>
nnoremap Ä :Rg <C-r><C-w><CR>

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

" search current keyword with tab (does not work well with the jumplist for some reason)
" nnoremap <Tab> *
" nnoremap <S-Tab> N

" replace all instances of word under cursor or selection.
nnoremap <Leader><Tab> *:%s///g<Left><Left>
vnoremap <Leader><Tab> "hy:%s/<C-r>h//g<left><left>

" comma to get a shell
map , :sh<CR>

" key seqs for CTRL-Arrow. At least on defaul cygwin. (not compatible with ttimeoutlen=0 ? )
"map <ESC>[5D <C-Left>
"map <ESC>[5C <C-Right>
"map! <ESC>[5D <C-Left>
"map! <ESC>[5C <C-Right>

" Switch `j` and `h`, Remap left and right arrow keys to move by word staying within the line
function! Rw()
    let last = line('.')
    norm w
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
"nnoremap <expr> <Right> col('.') == (col('$') - 1) \|\| getline('.')[col('.')-1:] =~# '^\S\+$' ? '$' : 'w'
"nnoremap <expr> <Right> col('.') == (col('$') - 1) \|\| getline('.')[col('.')-1:] =~# '^[^[:keyword:]]\+$\\|^\k\+$' ? '$' : 'w'
vnoremap j h
vnoremap h j
vnoremap <expr> <Right> getline('.')[col('.') :] =~# '\s\S' ? 'e' : '$'
vnoremap <expr> <Left> getline('.')[:col('.') + 1] =~# '\S\s' ? 'b' : '^'

" center after G
nnoremap G Gzz

" :W same as :w
command! W :w

" tab to autocomplete
inoremap <Tab> <C-n>

# tagbar toggle on enter
let g:tagbar_map_togglefold = "<Enter>"

" toggle paste mode
set pastetoggle=<F10>

" hide buffers instead of closing 
set hidden

" automatically reload/refresh files when they are changed
set autoread

" wildfire (generic select inside) objects
let g:wildfire_objects = ["i'", 'i"', "i)", "i]", "i}", "i>", "ip", "it"]

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDtree stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeSortOrder=['\/$', '[[extension]]']

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Autocomplete stuff
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" always hide preview window
set completeopt-=preview

" clang_complete (C/C++) (requires libclang)
let g:clang_library_path='/usr/lib/llvm-10/lib'

" merlin (ocaml) (can be installed via opam)
let g:opamshare = substitute(system('opam config var share'),'\n$','','''')
execute "set rtp+=" . g:opamshare . "/merlin/vim"

" old YCM settings in case I use it again
"let g:ycm_enable_diagnostic_signs = 0 " default 1 - removes gutter warnings
"let g:ycm_show_diagnostics_ui = 0 " default 1 - removes weird syntax highlighting
