set background=dark
if version > 580
        hi clear
        if exists("syntax_on")
                syntax reset
        endif
endif

set t_Co=256
let g:colors_name = "mortel_2_sunglasses"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi Normal guifg=#c8c8c8 guibg=#192224 guisp=#192224 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi Normal guifg=#000000 guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi LineNr guifg=#454545 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Comment guifg=#888888 guibg=NONE guisp=NONE gui=italic ctermfg=65 ctermbg=NONE cterm=NONE
hi TabLineFill guifg=#c9c6c9 guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi TabLine guifg=#c9c6c9 guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi TabLineSel guifg=#dfdfd3 guibg=#444444 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi ColorColumn guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi StatusLine guifg=#1e1e1e guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi VertSplit guifg=#dfdfd3 guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi StatusLineTerm guifg=#1e1e1e guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi Question guifg=#000000 guibg=#dfdfd3 guisp=#dfdfd3 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi NERDTreeDir guifg=#aa4400 guibg=#dfdfd3 gui=NONE

hi String guifg=#444444 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Character guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Boolean guifg=#000000 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Function guifg=#c9c6c9 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE

hi SpecialComment guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Include guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Debug guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Identifier guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Label guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Operator guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PreProc guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Exception guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Keyword guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Type guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Tag guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Structure guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Macro guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Repeat guifg=#1122dd guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE


hi IncSearch guifg=#000000 guibg=#aa4400 guisp=#aa4400 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi WildMenu guifg=NONE guibg=#A1A6A8 guisp=#A1A6A8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#90846f guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi Title guifg=#F9F9FF guibg=#90846f guisp=#90846f gui=NONE ctermfg=189 ctermbg=235 cterm=NONE
hi Folded guifg=#90846f guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
" hi TabLineSel guifg=#90846f guibg=#aa4400 guisp=#aa4400 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi StatusLineNC guifg=#1e1e1e guibg=#90846f guisp=#90846f gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi NonText guifg=#90846f guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
" TODO
hi PMenuSbar guifg=NONE guibg=#90846f guisp=#848688 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Todo guifg=#F9F9FF guibg=#aa4400 guisp=#aa4400 gui=NONE ctermfg=189 ctermbg=1 cterm=NONE
hi Special guifg=#b5b3aa guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE

" hi StatusLine guifg=#90846f guibg=#aa4400 guisp=#aa4400 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE

hi PMenuSel guifg=#000000 guibg=#70644f guisp=#aa4400 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi Search guifg=#000000 guibg=#aa4400 guisp=#aa4400 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi SpellRare guifg=#F9F9FF guibg=#90846f guisp=#90846f gui=underline ctermfg=189 ctermbg=235 cterm=underline

hi CursorLine guifg=NONE guibg=#90846f guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLineNr guifg=#f5c76c guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" hi TabLineFill guifg=#90846f guibg=#90846f guisp=#90846f gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi WarningMsg guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#90846f guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#90846f guisp=#90846f gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#F9F9F9 guibg=#90846f guisp=#90846f gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#aa4400 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

hi FoldColumn guifg=#90846f guibg=#A1A6A8 guisp=#A1A6A8 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Visual guifg=#1e1e1e guibg=#aa4400 guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi SpellCap guifg=#F9F9FF guibg=#90846f guisp=#90846f gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi VertSplit guifg=#90846f guibg=#90846f guisp=#90846f gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#90846f guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#90846f guisp=#90846f gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#A1A6A8 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#1e1e1e guibg=#90846f guisp=#90846f gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi SpecialKey guifg=#90846f guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#aa4400 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE

hi PMenuThumb guifg=NONE guibg=#a4a6a8 guisp=#a4a6a8 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SpellBad guifg=#F9F9FF guibg=#90846f guisp=#90846f gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Directory guifg=#536991 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Underlined guifg=#F9F9FF guibg=#90846f guisp=#90846f gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" hi TabLine guifg=#90846f guibg=#90846f guisp=#90846f gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi cursorim guifg=#90846f guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
