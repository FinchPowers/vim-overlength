highlight MyOverLength ctermbg=red ctermfg=white guibg=#592929
match MyOverLength /\%80v.\+/

fu! SetOver(var)
    execute("match MyOverLength /\\%".a:var."v.\\+/")
endfun

command! -nargs=1 SetO call SetOver(<f-args>)

