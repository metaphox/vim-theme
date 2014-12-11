" original solarized colors
" SOLARIZED HEX     16/8 TERMCOL  XTERM/HEX   L*A*B      RGB         HSB
" --------- ------- ---- -------  ----------- ---------- ----------- -----------
" base03    #002b36  8/4 brblack  234 #1c1c1c 15 -12 -12   0  43  54 193 100  21
" base02    #073642  0/4 black    235 #262626 20 -12 -12   7  54  66 192  90  26
" base01    #586e75 10/7 brgreen  240 #585858 45 -07 -07  88 110 117 194  25  46
" base00    #657b83 11/7 bryellow 241 #626262 50 -07 -07 101 123 131 195  23  51
" base0     #839496 12/6 brblue   244 #808080 60 -06 -03 131 148 150 186  13  59
" base1     #93a1a1 14/4 brcyan   245 #8a8a8a 65 -05 -02 147 161 161 180   9  63
" base2     #eee8d5  7/7 white    254 #e4e4e4 92 -00  10 238 232 213  44  11  93
" base3     #fdf6e3 15/7 brwhite  230 #ffffd7 97  00  10 253 246 227  44  10  99
" yellow    #b58900  3/3 yellow   136 #af8700 60  10  65 181 137   0  45 100  71
" orange    #cb4b16  9/3 brred    166 #d75f00 50  50  55 203  75  22  18  89  80
" red       #dc322f  1/1 red      160 #d70000 50  65  45 220  50  47   1  79  86
" magenta   #d33682  5/5 magenta  125 #af005f 50  65 -05 211  54 130 331  74  83
" violet    #6c71c4 13/5 brmagenta 61 #5f5faf 50  15 -45 108 113 196 237  45  77
" blue      #268bd2  4/4 blue      33 #0087ff 55 -10 -45  38 139 210 205  82  82
" cyan      #2aa198  6/6 cyan      37 #00afaf 60 -35 -05  42 161 152 175  74  63
" green     #859900  2/2 green     64 #5f8700 60 -20  65 133 153   0  68 100  60

set background=light

hi clear

if exists("syntax_on")
  syntax reset
endif

" Set environment to 256 colours
set t_Co=256

let colors_name = "metaphox"

if version >= 700
  hi CursorLine     guibg=#eee8d5 cterm=NONE ctermbg=230
  hi CursorLineNr   guibg=#eee8d5 guifg=#cb4b16 gui=NONE ctermfg=0 ctermbg=230
  hi MatchParen     guifg=#fdf6e3 guibg=#6c71c4 gui=bold ctermfg=132 ctermbg=231 cterm=bold
  hi Pmenu          guifg=#000000 guibg=#C8C8C8 ctermfg=16 ctermbg=251
  hi PmenuSel       guifg=#000000 guibg=#723821 ctermfg=16 ctermbg=237
endif

" Background and menu colors
hi Normal           guifg=#002b36 guibg=#FDF6E3 gui=none ctermfg=16 ctermbg=15 cterm=none
hi NonText          guifg=#073642 guibg=#EDF0F0 gui=none ctermfg=16 ctermbg=15 cterm=none
hi Cursor           guifg=#eee8d5 guibg=#073642 ctermbg=16 gui=none
hi LineNr           guifg=#93A1A1 guibg=#FDF6E3 gui=none ctermfg=249 ctermbg=15 cterm=none
hi StatusLine       guifg=#000000 guibg=#E0D7D2 gui=italic ctermfg=16 ctermbg=188 cterm=italic
hi StatusLineNC     guifg=#000000 guibg=#D4D7D7 gui=none ctermfg=16 ctermbg=188 cterm=none
hi VertSplit        guifg=#000000 guibg=#E3E6E6 gui=none ctermfg=16 ctermbg=254 cterm=none
hi Folded           guifg=#000000 guibg=#FCFFFF gui=none ctermfg=16 ctermbg=231 cterm=none
hi Title            guifg=#723821 guibg=NONE	gui=bold ctermfg=237 ctermbg=NONE cterm=bold
hi Visual           guifg=#788551 guibg=#C8C8C8 gui=none ctermfg=101 ctermbg=251 cterm=none
hi SpecialKey       guifg=#668822 guibg=#EDF0F0 gui=none ctermfg=64 ctermbg=255 cterm=none
"hi DiffChange       guibg=#FCFFB2 gui=none ctermbg=229 cterm=none
"hi DiffAdd          guibg=#D5D8FF gui=none ctermbg=189 cterm=none
"hi DiffText         guibg=#FDCBFF gui=none ctermbg=225 cterm=none
"hi DiffDelete       guibg=#FCBFBF gui=none ctermbg=217 cterm=none


" Syntax highlighting
hi Comment guifg=#723821 gui=none ctermfg=237 cterm=none
hi Constant guifg=#668822 gui=none ctermfg=64 cterm=none
hi Number guifg=#668822 gui=none ctermfg=64 cterm=none
hi Identifier guifg=#5A0000 gui=none ctermfg=52 cterm=none
hi Statement guifg=#A87196 gui=none ctermfg=132 cterm=none
hi Function guifg=#C66819 gui=none ctermfg=166 cterm=none
hi Special guifg=#8A7D00 gui=none ctermfg=100 cterm=none
hi PreProc guifg=#8A7D00 gui=none ctermfg=100 cterm=none
hi Keyword guifg=#A87196 gui=none ctermfg=132 cterm=none
hi String guifg=#788551 gui=none ctermfg=101 cterm=none
hi Type guifg=#CC865D gui=none ctermfg=173 cterm=none
hi pythonBuiltin guifg=#5A0000 gui=none ctermfg=52 cterm=none
hi TabLineFill guifg=#C7CEB9 gui=none ctermfg=251 cterm=none

hi LineProximity guibg=#DDDDB6
hi LineOverflow guibg=#AAAAB6
autocmd VimEnter * autocmd WinEnter * let w:created=1
autocmd VimEnter * let w:created=1

autocmd WinEnter * if !exists('w:created') | let w:m1=matchadd('LineProximity', '\%<81v.\%>75v', -1) | endif
autocmd WinEnter * if !exists('w:created') | let w:m2=matchadd('LineOverflow', '\%>80v.\+', -1) | endif
