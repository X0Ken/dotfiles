function! myspacevim#before() abort
  au BufNewFile,BufRead *.cc,*.h set ts=8 sw=2 smarttab
endfunction

function! myspacevim#after() abort
endfunction
