" Vim syntax file
" Language:         Quale
" Maintainer:       Manas
" Latest Revision:  20 April 2024


if exists("b:current_syntax")
  finish
endif

syn keyword qualeKeywords   fn module if else return alias import extern let
syn match   qualeNamespace  "::"
syn match   qualeAttr       "#!\=\[\w.*\]"
syn keyword qualeTodo       contained TODO FIXME

syn region qualeComment start="//" end="$" contains=qualeTodo

let b:current_syntax = "quale"

hi def link qualeKeywords   Keyword
hi def link qualeComment    Comment
hi def link qualeNamespace  Keyword
hi def link qualeAttr       Constant
hi def link qualeTodo       Todo
