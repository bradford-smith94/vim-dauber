"autoload/dauber.vim

function! dauber#colorStatusline(mode)
    if a:mode == 'ii' || a:mode == 'i'
        "normal insert
        execute "highlight link User1 " . g:dauber_insert_groups[0]
        execute "highlight link User2 " . g:dauber_insert_groups[1]
        execute "highlight link User3 " . g:dauber_insert_groups[2]
        execute "highlight link User4 " . g:dauber_insert_groups[3]
        execute "highlight link User5 " . g:dauber_insert_groups[4]
        execute "highlight link User6 " . g:dauber_insert_groups[5]
        execute "highlight link User7 " . g:dauber_insert_groups[6]
        execute "highlight link User8 " . g:dauber_insert_groups[7]
        execute "highlight link User9 " . g:dauber_insert_groups[8]
    elseif a:mode == 'ir' || a:mode == 'R'
        "insert replace mode
        execute "highlight link User1 " . g:dauber_replace_groups[0]
        execute "highlight link User2 " . g:dauber_replace_groups[1]
        execute "highlight link User3 " . g:dauber_replace_groups[2]
        execute "highlight link User4 " . g:dauber_replace_groups[3]
        execute "highlight link User5 " . g:dauber_replace_groups[4]
        execute "highlight link User6 " . g:dauber_replace_groups[5]
        execute "highlight link User7 " . g:dauber_replace_groups[6]
        execute "highlight link User8 " . g:dauber_replace_groups[7]
        execute "highlight link User9 " . g:dauber_replace_groups[8]
    elseif a:mode == 'iv' || a:mode == 'Rv'
        "virtual insert mode
        execute "highlight link User1 " . g:dauber_insert_groups[0]
        execute "highlight link User2 " . g:dauber_insert_groups[1]
        execute "highlight link User3 " . g:dauber_insert_groups[2]
        execute "highlight link User4 " . g:dauber_insert_groups[3]
        execute "highlight link User5 " . g:dauber_insert_groups[4]
        execute "highlight link User6 " . g:dauber_insert_groups[5]
        execute "highlight link User7 " . g:dauber_insert_groups[6]
        execute "highlight link User8 " . g:dauber_insert_groups[7]
        execute "highlight link User9 " . g:dauber_insert_groups[8]
    elseif a:mode == 'n'
        "normal mode
        execute "highlight link User1 " . g:dauber_normal_groups[0]
        execute "highlight link User2 " . g:dauber_normal_groups[1]
        execute "highlight link User3 " . g:dauber_normal_groups[2]
        execute "highlight link User4 " . g:dauber_normal_groups[3]
        execute "highlight link User5 " . g:dauber_normal_groups[4]
        execute "highlight link User6 " . g:dauber_normal_groups[5]
        execute "highlight link User7 " . g:dauber_normal_groups[6]
        execute "highlight link User8 " . g:dauber_normal_groups[7]
        execute "highlight link User9 " . g:dauber_normal_groups[8]
    elseif a:mode == 'v' || a:mode == 's'
        "visual mode
        execute "highlight link User1 " . g:dauber_visual_groups[0]
        execute "highlight link User2 " . g:dauber_visual_groups[1]
        execute "highlight link User3 " . g:dauber_visual_groups[2]
        execute "highlight link User4 " . g:dauber_visual_groups[3]
        execute "highlight link User5 " . g:dauber_visual_groups[4]
        execute "highlight link User6 " . g:dauber_visual_groups[5]
        execute "highlight link User7 " . g:dauber_visual_groups[6]
        execute "highlight link User8 " . g:dauber_visual_groups[7]
        execute "highlight link User9 " . g:dauber_visual_groups[8]
    elseif a:mode == 'V' || a:mode == 'S'
        "visual line mode
        execute "highlight link User1 " . g:dauber_visual_line_groups[0]
        execute "highlight link User2 " . g:dauber_visual_line_groups[1]
        execute "highlight link User3 " . g:dauber_visual_line_groups[2]
        execute "highlight link User4 " . g:dauber_visual_line_groups[3]
        execute "highlight link User5 " . g:dauber_visual_line_groups[4]
        execute "highlight link User6 " . g:dauber_visual_line_groups[5]
        execute "highlight link User7 " . g:dauber_visual_line_groups[6]
        execute "highlight link User8 " . g:dauber_visual_line_groups[7]
        execute "highlight link User9 " . g:dauber_visual_line_groups[8]
    elseif a:mode == 'CTRL-V' || a:mode == 'CTRL-S'
        "visual block mode
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
        "use normal colors
        execute "highlight link User1 " . g:dauber_normal_groups[0]
        execute "highlight link User2 " . g:dauber_normal_groups[1]
        execute "highlight link User3 " . g:dauber_normal_groups[2]
        execute "highlight link User4 " . g:dauber_normal_groups[3]
        execute "highlight link User5 " . g:dauber_normal_groups[4]
        execute "highlight link User6 " . g:dauber_normal_groups[5]
        execute "highlight link User7 " . g:dauber_normal_groups[6]
        execute "highlight link User8 " . g:dauber_normal_groups[7]
        execute "highlight link User9 " . g:dauber_normal_groups[8]
    endif
endfunction

"credit: lightline: github.com/itchyny/lightline.vim
function! dauber#colorStatuslineOnce()
    if !exists('w:dauber') || w:dauber
        call dauber#colorStatusline(mode())
    endif
endfunction
