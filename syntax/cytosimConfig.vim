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
syn region dispBlock start="display\s*=\s" end="$" contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString contained
syn region oneBlock matchgroup=separator start="{" end="}" fold transparent contains=commandChar, separator, templateBlock, commentLight, commentStrong, aString, dispBlock

"hi Ignore ctermfg=242
hi Keyword ctermfg=23

hi actionKeyword ctermfg=28
hi link objectKeyword Question	
hi commentLight ctermfg=242
hi link commentStrong NonText
hi link commentBlock NonText
hi link separator Keyword
hi link commandChar Keyword
hi link templateBlock Comment
hi aString ctermfg=92

let b:current_syntax = "cytosimConfig"
