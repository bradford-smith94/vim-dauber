"dauber.vim

if exists('g:loaded_dauber') || &cp
    finish
endif
let g:loaded_dauber = 1

if !exists('g:dauber_normal_groups')
    let g:dauber_normal_groups = []
endif

if !exists('g:dauber_insert_groups')
    let g:dauber_insert_groups = []
endif

if !exists('g:dauber_replace_groups')
    let g:dauber_replace_groups = []
endif

if !exists('g:dauber_visual_groups')
    let g:dauber_visual_groups = []
endif

if !exists('g:dauber_visual_block_groups')
    let g:dauber_visual_block_groups = []
endif

if !exists('g:dauber_visual_line_groups')
    let g:dauber_visual_line_groups = []
endif

"much of this taken from: http://stackoverflow.com/a/9121083
augroup dauber
    autocmd!
    autocmd InsertEnter * call dauber#colorStatusline('i' . v:insertmode)
    autocmd InsertLeave * call dauber#colorStatusline('n')
    autocmd WinEnter,BufWinEnter,ColorScheme * call dauber#colorStatusline(mode())
    autocmd CursorMoved * call dauber#colorStatuslineOnce()
augroup END

"work around for not having VisualEnter/VisualLeave autocmds
"see: https://stackoverflow.com/a/15565233
"TODO: don't need these?
"nnoremap <silent> v :call dauber#colorStatusline('v')<CR>v
"nnoremap <silent> V :call dauber#colorStatusline('V')<CR>V
"nnoremap <silent> <C-v> :call dauber#colorStatusline('CTRL-V')<CR><C-v>
"vnoremap <silent> <Esc> <Esc>:call dauber#colorStatusline('n')<CR>

