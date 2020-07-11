" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

"let g:airline_theme='<theme>' let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'junegunn/goyo.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'ayu-theme/ayu-vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'itchyny/lightline.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line


set number			" enable line numbers


"filetype plugin indent on
"" show existing tab with 4 spaces width
"set tabstop=4
"" when indenting with '>', use 4 spaces width
"set shiftwidth=4
"" On pressing tab, insert 4 spaces
"set expandtab


" Enable the list of buffers
"let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#left_alt_sep = ''
"let g:airline_powerline_fonts = 1
" Show just the filename
"let g:airline#extensions#tabline#fnamemod = ':t'


set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab     " Expand TABs to spaces

set termguicolors	" enable true color (24 bit colors)

let g:airline_theme='minimalist'
colorscheme mortel
let ayucolor = "light"
"let ayucolor = "mirage"
"let ayucolor = "dark"
"colorscheme ayu
" colorscheme VisualStudioDark
" colorscheme deus
" colorscheme vstudioDark

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" bind jj to normal mode
imap jj <Esc>

"Youcompleteme fix
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
set signcolumn=no
set completeopt-=preview

" more style stuff
set timeoutlen=1000 ttimeoutlen=0 " fix delay after esc
set colorcolumn=80 " set right margin marker
set nowrap " disable line wrapping
" au BufAdd,BufNewFile * nested tab sball " open buffers in new tab

" remove yank on delete
nnoremap y "*y
nnoremap Y "*Y
nnoremap p "*p
nnoremap P "*P
vnoremap y "*y
vnoremap Y "*Y
vnoremap p "*p
vnoremap P "*P
" easymotion map
" map <Leader>f <Plug>(easymotion-prefix)

" leader remap
let mapleader=" "

" remap so C-d goes down half a page while C-e goes up half a page
nnoremap <C-e> <C-u>

" remap so C-k goes down half a page while C-i goes up half a page
nnoremap <C-i> <C-u>
nnoremap <C-k> <C-d>

" Tab navigation like Firefox.
" nnoremap <C-S-TAB> :tabprevious<CR>
" nnoremap <C-TAB>   :tabnext<CR>
" nnoremap <C-t>     :tabnew<CR>
" inoremap <C-S-tab> <Esc>:tabprevious<CR>i
" inoremap <C-tab>   <Esc>:tabnext<CR>i
" inoremap <C-t>     <Esc>:tabnew<CR>

" remap hjkl to jklö 
" noremap ö l
" noremap l k
" noremap k j
" noremap j h

" Make YouCompleteMe not behave autistically
let g:ycm_key_list_select_completion = ['<TAB>']
let g:ycm_key_list_previous_completion = ['<S-TAB>']
let g:ycm_key_list_stop_completion = ['<C-y>', '<UP>', '<DOWN>']
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_autoclose_preview_window_after_completion = 1
" inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"

function! GoyoFix()
	execute "Goyo"
	execute "colorscheme mortel"
endfunction

nmap <leader>g :call GoyoFix()<CR>

" automatically reload/refresh files when they are changed
set autoread

"bind leader j to to go end of line, leader f to got to start of line
nnoremap <leader>j $
nnoremap <leader>f 0

" remap tab switching, buffer switching and split focus
map åå <C-W><C-W>
nnoremap Ö :tabprevious<CR>
nnoremap Ä :tabnext<CR>
map ö :bprevious<CR>
map ä :bnext<CR>
" map Å :buffers<CR>
map Å :buffers<CR>:buffer<Space>
nnoremap Q :bp\|bd #<CR>

" hide buffers instead of closing 
set hidden
