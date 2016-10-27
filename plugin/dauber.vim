"dauber.vim

if exists('g:loaded_dauber') || &cp
    finish
endif
let g:loaded_dauber = 1

"much of this taken from: http://stackoverflow.com/a/9121083
augroup dauber
    autocmd!
    autocmd InsertEnter * call dauber#colorStatusline('i' . v:insertmode)
    autocmd InsertLeave * call dauber#colorStatusline('n')
    autocmd CursorHold * call dauber#colorStatusline(mode())
augroup END

"work around for not having VisualEnter/VisualLeave autocmds
"see: https://stackoverflow.com/a/15565233
nnoremap <silent> v :call dauber#colorStatusline('v')<CR>v
nnoremap <silent> V :call dauber#colorStatusline('V')<CR>V
nnoremap <silent> <C-v> :call dauber#colorStatusline('CTRL-V')<CR><C-v>
vnoremap <silent> <Esc> <Esc>:call dauber#colorStatusline('n')<CR>

