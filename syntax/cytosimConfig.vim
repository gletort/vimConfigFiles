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
syn match aNum "[0-9]"

syn region commentBlock start="/\*\*" end="\*/" fold 
syn region templateBlock start="\[\[" end="\]\]" 
syn region dispBlock start="display\s*=\s" end="$" contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString, aNum contained
syn region oneBlock matchgroup=separator start="{" end="}" fold transparent contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString, dispBlock, aNum

"hi Ignore ctermfg=242
"hi Keyword ctermfg=23
hi CursorLineNr ctermbg=bg ctermfg=94

hi link actionKeyword Type
hi link objectKeyword Statement	
hi commentLight ctermfg=242
hi link commentStrong LineNr
hi link commentBlock Comment
hi link separator Operator
hi link commandChar Operator
hi link templateBlock Repeat
hi link aString String
hi link aNum Number

let b:current_syntax = "cytosimConfig"
