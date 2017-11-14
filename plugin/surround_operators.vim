let s:symbol_left = "\""
let s:symbol_right = "\""

function! SurroundWithSymbols(type)
  execute "normal! `[`]a" . s:symbol_right . "\<esc>``i" . s:symbol_left . "\<esc>"
endfunction

function! SurroundWithParentheses(type)
  let s:symbol_left = "("
  let s:symbol_right = ")"
  call SurroundWithSymbols(a:type)
endfunction

function! SurroundWithSingleCitation(type)
  let s:symbol_left = "\'"
  let s:symbol_right = "\'"
  call SurroundWithSymbols(a:type)
endfunction

function! SurroundWithDoubleCitation(type)
  let s:symbol_left = "\""
  let s:symbol_right = "\""
  call SurroundWithSymbols(a:type)
endfunction

nmap <silent> <leader>( :set operatorfunc=SurroundWithParentheses<CR>g@
nmap <silent> <leader>) :set operatorfunc=SurroundWithParentheses<CR>g@
nmap <silent> <leader>' :set operatorfunc=SurroundWithSingleCitation<CR>g@
nmap <silent> <leader>" :set operatorfunc=SurroundWithDoubleCitation<CR>g@
