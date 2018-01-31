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

syn match aString "\".*\""

syn region commentBlock start="/\*\*" end="\*/" fold 
syn region templateBlock start="\[\[" end="\]\]" 
syn region oneBlock matchgroup=separator start="{" end="}" fold transparent contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString

hi Ignore ctermfg=242

hi link actionKeyword Special
hi link objectKeyword Question	
hi link commentLight Ignore
hi link commentStrong Comment
hi link commentBlock Comment
hi link separator Keyword
hi link commandChar Keyword
hi link templateBlock NonText
hi link aString Number

let b:current_syntax = "cytosimConfig"
