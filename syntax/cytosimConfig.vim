" Vim syntax file
" Language: Cytosim configuration file
" By Gaelle Letort, institute Curie

if exists("b:current_syntax")
  finish
endif

syn keyword actionKeyword set new run change read import delete export report mark cut repeat for end call
syn keyword objectKeyword hand couple single fiber solid aster space simul field nucleus sphere bead bundle fake event

syn match commandChar "[=;,]"
syn match separator "[{}()]"
syn match commentLight "%.*$"
syn match commentStrong "%%.*$"

syn region commentBlock start="/\*\*" end="\*/" fold 
syn region oneBlock matchgroup=separator start="{" end="}" fold transparent contains=commandChar, separator


hi link actionKeyword Number
hi link objectKeyword Question	
hi link commentLight Ignore
hi link commentStrong Comment
hi link commentBlock Comment
hi link separator Keyword
hi link commandChar Keyword

let b:current_syntax = "cytosimConfig"
