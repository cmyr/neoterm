aug neoterm_test_pytest
  au VimEnter,BufRead,BufNewFile *.py, call neoterm#test#libs#add('pytest')
  au VimEnter *
        \ if (filereadable('test/*.py') || filereadable('test_*.py'))  |
        \   call neoterm#test#libs#add('pytest') |
        \ endif
aug END
