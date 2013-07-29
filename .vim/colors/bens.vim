hi clear
if exists("syntax_on")
  syntax reset
endif

set background=dark

hi Normal        guifg=Grey80    guibg=Black     guifg=Green
hi Search        guifg=brown                     gui=reverse
hi Visual        guifg=Grey25                    gui=bold
hi Cursor        guifg=Yellow    guibg=DarkGreen gui=bold
hi DiffAdd       guibg=#000080                   gui=NONE
hi DiffChange    guibg=#800080                   gui=NONE
hi DiffDelete    guifg=#80c0e0   guibg=#404040   gui=NONE
hi DiffText      guifg=Black     guibg=#c0e080   gui=NONE

hi SpecialKey term=bold ctermfg=4 guifg=LightBlue
hi NonText term=bold cterm=bold ctermfg=4 gui=bold guifg=LightBlue
hi Directory term=bold ctermfg=4 guifg=LightBlue
hi ErrorMsg term=standout cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=White guibg=Black
hi IncSearch term=reverse cterm=reverse gui=reverse
hi MoreMsg term=bold ctermfg=2 gui=bold guifg=SpringGreen4
hi ModeMsg term=bold cterm=bold gui=bold
hi LineNr term=underline ctermfg=3 guifg=Red3
hi Question term=standout ctermfg=2 gui=bold guifg=SpringGreen4
hi StatusLine term=bold,reverse cterm=bold,reverse gui=bold guifg=White guibg=Black
hi StatusLineNC term=reverse cterm=reverse gui=bold guifg=PeachPuff guibg=Black
hi VertSplit term=reverse cterm=reverse gui=bold guifg=White guibg=Black
hi Title term=bold ctermfg=5 gui=bold guifg=DeepPink3
hi VisualNOS term=bold,underline cterm=bold,underline gui=bold,underline
hi WarningMsg term=standout ctermfg=1 gui=bold guifg=Red
hi WildMenu term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Black
hi Folded term=standout ctermfg=4 ctermbg=7 guifg=Black guibg=Black
hi FoldColumn term=standout ctermfg=4 ctermbg=7 guifg=Blue guibg=Black
hi lCursor guifg=bg guibg=fg

" Colors for syntax highlighting
hi Comment term=bold ctermfg=4 guifg=MediumPurple3
hi Constant term=underline ctermfg=1 guifg=Salmon2
hi Special term=bold ctermfg=5 guifg=SeaGreen
hi Identifier term=underline ctermfg=6 guifg=DarkCyan
hi Statement term=bold ctermfg=3 gui=bold guifg=DarkOrange3
hi PreProc term=underline ctermfg=5 guifg=Tan
hi Type term=underline ctermfg=2 gui=bold guifg=SpringGreen4
hi Ignore cterm=bold ctermfg=7 guifg=bg
hi Error term=reverse cterm=bold ctermfg=7 ctermbg=1 gui=bold guifg=Black guibg=Green
hi Todo term=standout ctermfg=0 ctermbg=3 guifg=Black guibg=Green
