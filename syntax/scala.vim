" Vim syntax file
" Language: Scala
" Maintainer: Kraban
" Latest Revision: 2017-07-26

" Assumes magic is set

if exists("b:current_syntax")
  finish
endif

" KEYWORDS

" Comment
syn match scalaComment "//.*$"
syn region scalaComment start="/\*" end="/\*"

" Constants
syn region scalaString start="\"" end="\""
syn region scalaChar start="\'" end="\'"
syn match scalaNumber "\d\+"
syn keyword scalaBoolean true false
syn match scalaFloat "\d\+\.\d\+"

" Types
syn keyword scalaType Byte Short Int Long Float Double Char String Boolean Unit
syn keyword scalaType Null Nothing Any AnyRef

" Identifier
syn match scalaIdentifier "[a-zA-Z0-9=+]\+" contained

syn keyword scalaDefs     class object def val var nextgroup=scalaIdentifier skipwhite
syn keyword scalaKeywords abstract case catch do else extends final
syn keyword scalaKeywords finally for forSome if implicit import lazy macro match new
syn keyword scalaKeywords null override package private protected return sealed
syn keyword scalaKeywords super this throw trait try type while with yield

" LINKS

let b:current_syntax = "scala"

hi def link scalaKeywords Statement
hi def link scalaComment Comment
hi def link scalaString String
hi def link scalaChar Character
hi def link scalaNumber Number
hi def link scalaBoolean Boolean
hi def link scalaFloat Float
hi def link scalaType Type
hi def link scalaIdentifier Identifier
hi def link scalaDefs Statement
