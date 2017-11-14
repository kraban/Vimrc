function! SurroundWith(type)
  let s:symbol = GetSymbol()
  execute "normal! `[`]a" . s:symbol . "\<esc>``i" . s:symbol . "\<esc>"
endfunction

function! GetSymbol()
  return nr2char(getchar()) 
endfunction

nmap <silent> <leader>s :set operatorfunc=SurroundWith<CR>g@
