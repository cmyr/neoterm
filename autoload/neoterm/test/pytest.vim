function! neoterm#test#pytest#run(scope)
  let path = g:neoterm_use_relative_path ? expand('%') : expand('%:p')

  let command = 'py.test'
  if a:scope == 'file'
    let command .= ' ' . path
  elseif a:scope == 'all'
    let command .= ' ' . expand('%:h')
  endif

  return command
endfunction
