"" Functions
" A wrapper function to restore the cursor position, window position,
" and last search after running a command.
function Preserve(command)
    let _s=@/
    let l = line(".")
    let c = col(".")

    execute a:command

    let @/=_s
    :call cursor(l, c)
endfunction

" Gets a char from user command line
function InputChar()
    let c = getchar()
    return type(c) == type(0) ? nr2char(c) : c
endfunction

" Helper function for Align
function _Align()
    let keyword = InputChar()
    execute ':Tab /' . keyword
endfunction

" Aligns the code using Tab command but with variable keyword
funct! Align()
    call Preserve(_Align())
endf
