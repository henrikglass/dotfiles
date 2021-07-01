set background=dark
if version > 580
        hi clear
        if exists("syntax_on")
                syntax reset
        endif
endif

set t_Co=256
let g:colors_name = "mortel_solarium"

"hi CTagsMember -- no settings --
"hi CTagsGlobalConstant -- no settings --
"hi Ignore -- no settings --
"hi Normal guifg=#c8c8c8 guibg=#204040 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi Normal guifg=#d0c0a0 guibg=#204040 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi LineNr guifg=#d0c0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Comment guifg=#40c040 guibg=NONE guisp=NONE gui=italic ctermfg=65 ctermbg=NONE cterm=NONE
hi TabLineFill guifg=#c9c6c9 guibg=#204040 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi TabLine guifg=#c9c6c9 guibg=#204040 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi TabLineSel guifg=#204040 guibg=#e9e9e9 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi ColorColumn guibg=#204040 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi StatusLine guifg=#204040 guibg=#d0c0a0 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi VertSplit guifg=#204040 guibg=#204040 guisp=#204040 gui=NONE ctermfg=251 ctermbg=235 cterm=bold

hi Directory guifg=#d0c0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi String guifg=#ce9178 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Character guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Boolean guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Function guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE

hi SpecialComment guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Include guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Debug guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Identifier guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Label guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Operator guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PreProc guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Exception guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Keyword guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Type guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Tag guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Structure guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Macro guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Repeat guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi NERDTreeDir guifg=#e9e9e9 guibg=#204040 gui=NONE


hi IncSearch guifg=#204040 guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi WildMenu guifg=NONE guibg=#80f0e0 guisp=#80f0e0 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SignColumn guifg=#204040 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
hi Title guifg=#F9F9FF guibg=#204040 guisp=#204040 gui=NONE ctermfg=189 ctermbg=235 cterm=NONE
hi Folded guifg=#204040 guibg=#80f0e0 guisp=#80f0e0 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
" hi TabLineSel guifg=#204040 guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi StatusLineNC guifg=#e9e9e9 guibg=#204040 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#80f0e0 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE

hi PMenuSbar guifg=NONE guibg=#292929 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Todo guifg=#f0e0c0 guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=189 ctermbg=1 cterm=NONE
hi Special guifg=#b5b3aa guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
" TODO
" hi StatusLine guifg=#204040 guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE

hi PMenuSel guifg=#204040 guibg=#d0c0a0 guisp=#d0c0a0 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi Search guifg=#204040 guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi SpellRare guifg=#F9F9FF guibg=#204040 guisp=#204040 gui=underline ctermfg=189 ctermbg=235 cterm=underline

hi CursorLine guifg=NONE guibg=#292929 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLineNr guifg=#f5c76c guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" hi TabLineFill guifg=#204040 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi WarningMsg guifg=#80f0e0 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#204040 guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#204040 guisp=#204040 gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#F9F9F9 guibg=#204040 guisp=#204040 gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#ff4349 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

hi FoldColumn guifg=#204040 guibg=#80f0e0 guisp=#80f0e0 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Visual guifg=#f0e0c0 guibg=#ff4349 guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi SpellCap guifg=#F9F9FF guibg=#204040 guisp=#204040 gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi VertSplit guifg=#204040 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#204040 guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#204040 guisp=#204040 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#80f0e0 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#f0e0c0 guibg=#ff4349 guisp=#292929 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#e9e9e9 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE

hi PMenuThumb guifg=NONE guibg=#d0c0a0 guisp=#e9e9e9 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SpellBad guifg=#F9F9FF guibg=#204040 guisp=#204040 gui=underline ctermfg=189 ctermbg=235 cterm=underline

hi Underlined guifg=#F9F9FF guibg=#204040 guisp=#204040 gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" hi TabLine guifg=#204040 guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi cursorim guifg=#204040 guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
