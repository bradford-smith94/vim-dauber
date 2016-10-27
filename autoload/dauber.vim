function! dauber#colorStatusline(mode)
    if a:mode == 'ii' || a:mode == 'i'
        "normal insert
    elseif a:mode == 'ir' || a:mode == 'R'
        "insert replace mode
    elseif a:mode == 'iv' || a:mode == 'Rv'
        "virtual insert mode
    elseif a:mode == 'n'
        "normal mode
    elseif a:mode == 'v' || a:mode == 's'
        "visual mode
    elseif a:mode == 'V' || a:mode == 'S'
        "visual line mode
    elseif a:mode == 'CTRL-V' || a:mode == 'CTRL-S'
        "visual block mode
    else
        "use normal colors
    endif
endfunction
