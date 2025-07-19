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
"hi Normal guifg=#c8c8c8 guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi Normal guifg=#d0c0a0 guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi LineNr guifg=#d0c0a0 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Comment guifg=#909090 guibg=NONE guisp=NONE gui=italic ctermfg=65 ctermbg=NONE cterm=NONE
hi TabLineFill guifg=#c9c6c9 guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi TabLine guifg=#c9c6c9 guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi TabLineSel guifg=#1e1e1e guibg=#d5d5d5 guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi ColorColumn guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=NONE
hi VertSplit guifg=#1e1e1e guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=bold

hi Directory guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi String guifg=#ce9178 guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
hi Character guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Float guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Number guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Boolean guifg=#b0f0e0 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE
hi Function guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE

hi SpecialComment guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Typedef guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi PreCondit guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Include guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Debug guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Identifier guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi SpecialChar guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Conditional guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi StorageClass guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Label guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Delimiter guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Statement guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Operator guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi PreProc guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi MoreMsg guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Exception guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Keyword guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Type guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Tag guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Structure guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=60 ctermbg=NONE cterm=NONE
hi Macro guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi MatchParen guifg=#d75f5f guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
hi Repeat guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE
"hi NERDTreeDir guifg=#d5d5d5 guibg=#1e1e1e gui=NONE


hi IncSearch guifg=#1e1e1e guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi WildMenu guifg=NONE guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi Title guifg=#F9F9FF guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=189 ctermbg=235 cterm=NONE
hi Folded guifg=#505050 guibg=#1e1e1e guisp=#1e1e1e gui=italic ctermfg=235 ctermbg=248 cterm=NONE
" hi TabLineSel guifg=#1e1e1e guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi StatusLine guifg=#1e1e1e guibg=#d0c0a0 guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi StatusLineNC guifg=#d5d5d5 guibg=#1e1e1e guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi StatusLineTerm guifg=#1e1e1e guibg=#d0c0a0 guisp=#1e1e1e gui=NONE ctermfg=251 ctermbg=235 cterm=bold
hi StatusLineTermNC guifg=#d5d5d5 guibg=#492929 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi NonText guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi DiffText guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi ErrorMsg guifg=#80f0e0 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE

hi PMenuSbar guifg=NONE guibg=#292929 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=102 cterm=NONE
hi Todo guifg=#f0e0c0 guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=189 ctermbg=1 cterm=NONE
hi Special guifg=#b5b3aa guibg=NONE guisp=NONE gui=NONE ctermfg=144 ctermbg=NONE cterm=NONE
" TODO
" hi StatusLine guifg=#1e1e1e guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE

hi PMenuSel guifg=#1e1e1e guibg=#d0c0a0 guisp=#d0c0a0 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi Search guifg=#1e1e1e guibg=#ff4349 guisp=#ff4349 gui=NONE ctermfg=235 ctermbg=1 cterm=NONE
hi SpellRare guifg=#F9F9FF guibg=#1e1e1e guisp=#1e1e1e gui=underline ctermfg=189 ctermbg=235 cterm=underline

hi CursorLine guifg=NONE guibg=#292929 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi CursorLineNr guifg=#536991 guibg=NONE guisp=NONE gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" hi TabLineFill guifg=#1e1e1e guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi WarningMsg guifg=#80f0e0 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi VisualNOS guifg=#1e1e1e guibg=#F9F9FF guisp=#F9F9FF gui=underline ctermfg=235 ctermbg=189 cterm=underline
hi DiffDelete guifg=NONE guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=NONE ctermbg=235 cterm=NONE
hi ModeMsg guifg=#F9F9F9 guibg=#1e1e1e guisp=#1e1e1e gui=NONE ctermfg=15 ctermbg=235 cterm=NONE
hi CursorColumn guifg=NONE guibg=#222E30 guisp=#222E30 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi Define guifg=#ff4349 guibg=NONE guisp=NONE gui=NONE ctermfg=1 ctermbg=NONE cterm=NONE

hi FoldColumn guifg=#1e1e1e guibg=#80f0e0 guisp=#80f0e0 gui=italic ctermfg=235 ctermbg=248 cterm=NONE
hi Visual guifg=#f0e0c0 guibg=#ff4349 guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi SpellCap guifg=#F9F9FF guibg=#1e1e1e guisp=#1e1e1e gui=underline ctermfg=189 ctermbg=235 cterm=underline
"hi VertSplit guifg=#1e1e1e guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi DiffChange guifg=NONE guibg=#492224 guisp=#492224 gui=NONE ctermfg=NONE ctermbg=52 cterm=NONE
hi Cursor guifg=#1e1e1e guibg=#F9F9F9 guisp=#F9F9F9 gui=NONE ctermfg=235 ctermbg=15 cterm=NONE
hi SpellLocal guifg=#F9F9FF guibg=#1e1e1e guisp=#1e1e1e gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi Error guifg=#80f0e0 guibg=#912C00 guisp=#912C00 gui=NONE ctermfg=248 ctermbg=88 cterm=NONE
hi PMenu guifg=#f0e0c0 guibg=#ff4349 guisp=#292929 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi SpecialKey guifg=#5E6C70 guibg=NONE guisp=NONE gui=italic ctermfg=66 ctermbg=NONE cterm=NONE
hi Constant guifg=#d5d5d5 guibg=NONE guisp=NONE gui=NONE ctermfg=248 ctermbg=NONE cterm=NONE

hi PMenuThumb guifg=NONE guibg=#d0c0a0 guisp=#d5d5d5 gui=NONE ctermfg=NONE ctermbg=248 cterm=NONE
hi SpellBad guifg=#F9F9FF guibg=#1e1e1e guisp=#1e1e1e gui=underline ctermfg=189 ctermbg=235 cterm=underline

hi Underlined guifg=#F9F9FF guibg=#1e1e1e guisp=#1e1e1e gui=underline ctermfg=189 ctermbg=235 cterm=underline
hi DiffAdd guifg=NONE guibg=#193224 guisp=#193224 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
" hi TabLine guifg=#1e1e1e guibg=#5E6C70 guisp=#5E6C70 gui=NONE ctermfg=235 ctermbg=66 cterm=NONE
hi cursorim guifg=#1e1e1e guibg=#536991 guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE

" Termdebug
hi debugBreakpoint guifg=#f0e0c0 guibg=#693939 guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi debugPC guifg=#f0e0c0 guibg=#ff4349 guisp=#F9F9FF gui=NONE ctermfg=235 ctermbg=189 cterm=NONE
hi debugPC guifg=NONE guibg=#693939 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi debugPC guifg=#1e1e1e guibg=#d0c0a0 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi debugPC guifg=#1e1e1e guibg=#a09080 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
"hi debugPC guifg=#1e1e1e guibg=#FF4349 guisp=#292929 gui=NONE ctermfg=NONE ctermbg=236 cterm=NONE
hi SignColumn guifg=#F9F9FF guibg=#1e1e1e guisp=#536991 gui=NONE ctermfg=235 ctermbg=60 cterm=NONE
