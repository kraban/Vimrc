" Vim syntax file
" Language: Dart
" Maintainer: Kraban
" Latest Revision: 2018-12-04

" Assumes magic is set

if exists("b:current_syntax")
  finish
endif

" KEYWORDS

" Comment
syn match dartComment "//.*$"
syn region dartComment start="/\*" end="/\*"

" Constants
syn region dartString start="\"" end="\""
syn region dartString start="\'" end="\'"
syn match dartNumber "\d\+"
syn keyword dartBoolean true false
syn match dartFloat "\d\+\.\d\+"

" Types
syn keyword dartType double int Object dynamic String bool List Map

" Identifier
syn match dartIdentifier "[a-zA-Z0-9=+]\+" contained

syn keyword dartDefs     class var nextgroup=dartIdentifier skipwhite
syn keyword dartKeywords abstract as assert async await break case catch const continue covariant
syn keyword dartKeywords default deferred do dynamic else enum export extends external factory false
syn keyword dartKeywords final for Function get hide if implements import in interface is library mixin
syn keyword dartKeywords new null on operator part rethrow return set show static super switch sync this
syn keyword dartKeywords throw true try typedef void while with yield

" LINKS

let b:current_syntax = "dart"

hi def link dartKeywords Statement
hi def link dartComment Comment
hi def link dartString String
hi def link dartNumber Number
hi def link dartBoolean Boolean
hi def link dartFloat Float
hi def link dartType Type
hi def link dartIdentifier Identifier
hi def link dartDefs Statement
