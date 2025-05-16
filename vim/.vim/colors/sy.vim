" SY Custo color scheme

hi clear
if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "sy"

" Basic UI
hi Normal       guifg=#ead6eb guibg=#241f37
hi CursorLine   guibg=#2d2543
hi LineNr       guifg=#7998c4 guibg=#241f37
hi Visual       guibg=#52474b
hi StatusLine   guifg=#241f37 guibg=#7998c4
hi Search       guibg=#e6aed5 guifg=#241f37
hi MatchParen   guibg=#c6d3e6 guifg=#241f37

" Syntax
hi Comment      guifg=#52474b gui=italic
hi Constant     guifg=#c6d3e6
" hi String       guifg=#c6d3e6
hi String       guifg=#89D5F6
hi TSString     guifg=#89D5F6
hi Identifier   guifg=#7998C4
hi Function     guifg=#e6aed5
hi Statement    guifg=#C654B1
" hi Keyword      guifg=#805870
hi Keyword      guifg=#E6AED5
hi Type         guifg=#C654B1
hi PreProc      guifg=#7998c4
hi Todo         guifg=#241f37 guibg=#c6d3e6

" Optional linking for simplicity
hi link Title Statement
hi link Number Constant
hi link Boolean Constant
hi link Operator Statement
