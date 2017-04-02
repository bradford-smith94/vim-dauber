# vim-dauber
First: origins of the name.

`dauber` - *noun* - a crude or inartistic painter.

Dauber is plugin to change the color of Vim's builtin statusline based on the
current mode.  It does so in a rather crude and uninspired manner too.

## How it Works
Dauber makes use of Vim's User highlight groups (i.e. - `User1`, `User2` ... `User9`)
see `:help hl-User1`.  Use these groups in your statusline config, then define
highlight groups for each Vim mode, and Dauber will link them to `User1` - `User9`
when the mode switches.

## Configuration
The following variables control Dauber:

- `g:dauber_normal_groups`
- `g:dauber_insert_groups`
- `g:dauber_replace_groups`
- `g:dauber_visual_groups`
- `g:dauber_visual_block_groups`
- `g:dauber_visual_line_groups`

Each of them should be set to a list of the names of nine highlight groups.
If you don't want a color set it to the name `NONE` or something like that.
