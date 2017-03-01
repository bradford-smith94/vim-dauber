"autoload/dauber.vim

function! dauber#colorStatusline(mode) "{{{
    if a:mode == 'ii' || a:mode == 'i'
        "normal insert
        call dauber#highlightInsert()
    elseif a:mode == 'ir' || a:mode == 'R'
        "insert replace mode
        call dauber#highlightReplace()
    elseif a:mode == 'iv' || a:mode == 'Rv'
        "virtual insert mode
        call dauber#highlightInsert()
    elseif a:mode == 'n'
        "normal mode
        call dauber#highlightNormal()
    elseif a:mode == 'v' || a:mode == 's'
        "visual mode
        call dauber#highlightVisual()
    elseif a:mode == 'V' || a:mode == 'S'
        "visual line mode
        call dauber#highlightVLine()
    elseif a:mode == 'CTRL-V' || a:mode == 'CTRL-S'
        "visual block mode
        call dauber#highlightVBlock()
    else
        "use normal colors
        call dauber#highlightNormal()
    endif
endfunction "}}}

function! dauber#highlightNormal() "{{{
    if exists('b:dauber_normal_groups')
        execute "highlight link User1 " . b:dauber_normal_groups[0]
        execute "highlight link User2 " . b:dauber_normal_groups[1]
        execute "highlight link User3 " . b:dauber_normal_groups[2]
        execute "highlight link User4 " . b:dauber_normal_groups[3]
        execute "highlight link User5 " . b:dauber_normal_groups[4]
        execute "highlight link User6 " . b:dauber_normal_groups[5]
        execute "highlight link User7 " . b:dauber_normal_groups[6]
        execute "highlight link User8 " . b:dauber_normal_groups[7]
        execute "highlight link User9 " . b:dauber_normal_groups[8]
    elseif !empty('g:dauber_normal_groups')
        execute "highlight link User1 " . g:dauber_normal_groups[0]
        execute "highlight link User2 " . g:dauber_normal_groups[1]
        execute "highlight link User3 " . g:dauber_normal_groups[2]
        execute "highlight link User4 " . g:dauber_normal_groups[3]
        execute "highlight link User5 " . g:dauber_normal_groups[4]
        execute "highlight link User6 " . g:dauber_normal_groups[5]
        execute "highlight link User7 " . g:dauber_normal_groups[6]
        execute "highlight link User8 " . g:dauber_normal_groups[7]
        execute "highlight link User9 " . g:dauber_normal_groups[8]
    else
        call dauber#clearHighlights()
    endif
endfunction "}}}

function! dauber#highlightInsert() "{{{
    if exists('b:dauber_insert_groups')
        execute "highlight link User1 " . b:dauber_insert_groups[0]
        execute "highlight link User2 " . b:dauber_insert_groups[1]
        execute "highlight link User3 " . b:dauber_insert_groups[2]
        execute "highlight link User4 " . b:dauber_insert_groups[3]
        execute "highlight link User5 " . b:dauber_insert_groups[4]
        execute "highlight link User6 " . b:dauber_insert_groups[5]
        execute "highlight link User7 " . b:dauber_insert_groups[6]
        execute "highlight link User8 " . b:dauber_insert_groups[7]
        execute "highlight link User9 " . b:dauber_insert_groups[8]
    elseif !empty('g:dauber_insert_groups')
        execute "highlight link User1 " . g:dauber_insert_groups[0]
        execute "highlight link User2 " . g:dauber_insert_groups[1]
        execute "highlight link User3 " . g:dauber_insert_groups[2]
        execute "highlight link User4 " . g:dauber_insert_groups[3]
        execute "highlight link User5 " . g:dauber_insert_groups[4]
        execute "highlight link User6 " . g:dauber_insert_groups[5]
        execute "highlight link User7 " . g:dauber_insert_groups[6]
        execute "highlight link User8 " . g:dauber_insert_groups[7]
        execute "highlight link User9 " . g:dauber_insert_groups[8]
    else
        call dauber#clearHighlights()
    endif
endfunction "}}}

function! dauber#highlightReplace() "{{{
    if exists('b:dauber_replace_groups')
        execute "highlight link User1 " . b:dauber_replace_groups[0]
        execute "highlight link User2 " . b:dauber_replace_groups[1]
        execute "highlight link User3 " . b:dauber_replace_groups[2]
        execute "highlight link User4 " . b:dauber_replace_groups[3]
        execute "highlight link User5 " . b:dauber_replace_groups[4]
        execute "highlight link User6 " . b:dauber_replace_groups[5]
        execute "highlight link User7 " . b:dauber_replace_groups[6]
        execute "highlight link User8 " . b:dauber_replace_groups[7]
        execute "highlight link User9 " . b:dauber_replace_groups[8]
    elseif !empty('g:dauber_replace_groups')
        execute "highlight link User1 " . g:dauber_replace_groups[0]
        execute "highlight link User2 " . g:dauber_replace_groups[1]
        execute "highlight link User3 " . g:dauber_replace_groups[2]
        execute "highlight link User4 " . g:dauber_replace_groups[3]
        execute "highlight link User5 " . g:dauber_replace_groups[4]
        execute "highlight link User6 " . g:dauber_replace_groups[5]
        execute "highlight link User7 " . g:dauber_replace_groups[6]
        execute "highlight link User8 " . g:dauber_replace_groups[7]
        execute "highlight link User9 " . g:dauber_replace_groups[8]
    else
        call dauber#clearHighlights()
    endif
endfunction "}}}

function! dauber#highlightVisual() "{{{
    if exists('b:dauber_visual_groups')
        execute "highlight link User1 " . b:dauber_visual_groups[0]
        execute "highlight link User2 " . b:dauber_visual_groups[1]
        execute "highlight link User3 " . b:dauber_visual_groups[2]
        execute "highlight link User4 " . b:dauber_visual_groups[3]
        execute "highlight link User5 " . b:dauber_visual_groups[4]
        execute "highlight link User6 " . b:dauber_visual_groups[5]
        execute "highlight link User7 " . b:dauber_visual_groups[6]
        execute "highlight link User8 " . b:dauber_visual_groups[7]
        execute "highlight link User9 " . b:dauber_visual_groups[8]
    elseif !empty('g:dauber_visual_groups')
        execute "highlight link User1 " . g:dauber_visual_groups[0]
        execute "highlight link User2 " . g:dauber_visual_groups[1]
        execute "highlight link User3 " . g:dauber_visual_groups[2]
        execute "highlight link User4 " . g:dauber_visual_groups[3]
        execute "highlight link User5 " . g:dauber_visual_groups[4]
        execute "highlight link User6 " . g:dauber_visual_groups[5]
        execute "highlight link User7 " . g:dauber_visual_groups[6]
        execute "highlight link User8 " . g:dauber_visual_groups[7]
        execute "highlight link User9 " . g:dauber_visual_groups[8]
    else
        call dauber#clearHighlights()
    endif
endfunction "}}}

function! dauber#highlightVLine() "{{{
    if exists('b:dauber_visual_line_groups')
        execute "highlight link User1 " . b:dauber_visual_line_groups[0]
        execute "highlight link User2 " . b:dauber_visual_line_groups[1]
        execute "highlight link User3 " . b:dauber_visual_line_groups[2]
        execute "highlight link User4 " . b:dauber_visual_line_groups[3]
        execute "highlight link User5 " . b:dauber_visual_line_groups[4]
        execute "highlight link User6 " . b:dauber_visual_line_groups[5]
        execute "highlight link User7 " . b:dauber_visual_line_groups[6]
        execute "highlight link User8 " . b:dauber_visual_line_groups[7]
        execute "highlight link User9 " . b:dauber_visual_line_groups[8]
    elseif !empty('g:dauber_visual_line_groups')
        execute "highlight link User1 " . g:dauber_visual_line_groups[0]
        execute "highlight link User2 " . g:dauber_visual_line_groups[1]
        execute "highlight link User3 " . g:dauber_visual_line_groups[2]
        execute "highlight link User4 " . g:dauber_visual_line_groups[3]
        execute "highlight link User5 " . g:dauber_visual_line_groups[4]
        execute "highlight link User6 " . g:dauber_visual_line_groups[5]
        execute "highlight link User7 " . g:dauber_visual_line_groups[6]
        execute "highlight link User8 " . g:dauber_visual_line_groups[7]
        execute "highlight link User9 " . g:dauber_visual_line_groups[8]
    else
        call dauber#clearHighlights()
    endif
endfunction "}}}

function! dauber#highlightVBlock() "{{{
    if exists('b:dauber_visual_block_groups')
        execute "highlight link User1 " . b:dauber_visual_block_groups[0]
        execute "highlight link User2 " . b:dauber_visual_block_groups[1]
        execute "highlight link User3 " . b:dauber_visual_block_groups[2]
        execute "highlight link User4 " . b:dauber_visual_block_groups[3]
        execute "highlight link User5 " . b:dauber_visual_block_groups[4]
        execute "highlight link User6 " . b:dauber_visual_block_groups[5]
        execute "highlight link User7 " . b:dauber_visual_block_groups[6]
        execute "highlight link User8 " . b:dauber_visual_block_groups[7]
        execute "highlight link User9 " . b:dauber_visual_block_groups[8]
    elseif !empty('g:dauber_visual_block_groups')
        execute "highlight link User1 " . g:dauber_visual_block_groups[0]
        execute "highlight link User2 " . g:dauber_visual_block_groups[1]
        execute "highlight link User3 " . g:dauber_visual_block_groups[2]
        execute "highlight link User4 " . g:dauber_visual_block_groups[3]
        execute "highlight link User5 " . g:dauber_visual_block_groups[4]
        execute "highlight link User6 " . g:dauber_visual_block_groups[5]
        execute "highlight link User7 " . g:dauber_visual_block_groups[6]
        execute "highlight link User8 " . g:dauber_visual_block_groups[7]
        execute "highlight link User9 " . g:dauber_visual_block_groups[8]
    else
        call dauber#clearHighlights()
    endif
endfunction "}}}

function! dauber#clearHighlights() "{{{
    highlight link User1 None
    highlight link User2 None
    highlight link User3 None
    highlight link User4 None
    highlight link User5 None
    highlight link User6 None
    highlight link User7 None
    highlight link User8 None
    highlight link User9 None
endfunction "}}}

"credit: lightline: github.com/itchyny/lightline.vim
function! dauber#colorStatuslineOnce()
    if !exists('w:dauber') || w:dauber
        call dauber#colorStatusline(mode())
    endif
endfunction
