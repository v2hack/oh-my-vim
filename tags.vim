
" -------------------------
" create tags & cscope file
" -------------------------
" 判断操作系统
if (has("win32") || has("win64") || has("win32unix"))
    let g:isWin = 1
else
    let g:isWin = 0
endif

map <F5> :call Do_CsTag()<cr>
function! Do_CsTag()
    let dir = getcwd()

    if ( DeleteFile(dir, "tags") )
        return
    endif
    if ( DeleteFile(dir, "cscope.files") )
        return
    endif
    if ( DeleteFile(dir, "cscope.out") )
        return
    endif
"可看到 ctags 支持生成标签类型的全量列表：
"c classes
"d macro definitions
"e enumerators (values inside an enumeration)
"f function definitions
"g enumeration names
"l local variables [off]
"m class, struct, and union members
"n namespaces
"p function prototypes [off]
"s structure names
"t typedefs
"u union names
"v variable definitions
"x external and forward variable declarations [off]

    if(executable('ctags'))
        "silent! execute \"!ctags -R --c++-kinds=+psxdefg --c-kinds=+psxdefg --fields=+iaS --extra=+q ."
        silent! execute "!ctags -R --c++-kinds=+p+l+x+c+d+e+f+g+m+n+s+t+u+v --fields=+liaS --extra=+q ."
    endif
    if(executable('cscope') && has("cscope") )
        if(g:isWin)
            silent! execute "!dir /s/b *.c,*.cc,*.hpp,*.cpp,*.h,*.java,*.cs >> cscope.files"
        else
            silent! execute "!find . -iname '*.[ch]' -o -name '*.cpp,*.cc,*.hpp' > cscope.files"
        endif
        silent! execute "!cscope -Rbkq"
        execute "normal :"
        if filereadable("cscope.out")
            execute "cs add cscope.out"
        endif
    endif
    execute "redr!"
endfunction

function! DeleteFile(dir, filename)
    if filereadable(a:filename)
        if (g:isWin)
            let ret = delete(a:dir."\\".a:filename)
        else
            let ret = delete("./".a:filename)
        endif
        if (ret != 0)
            echohl WarningMsg | echo "Failed to delete ".a:filename | echohl None
            return 1
        else
            return 0
        endif
    endif
    return 0
endfunction
