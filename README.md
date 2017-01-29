#vim-dauber
First:

`dauber` - *noun* - a crude or inartistic painter.

Dauber is plugin to change the color of Vim's builtin statusline based on the
current mode.  It does so in a rather crude and uninspired manner too.

##How it Works
Dauber makes use of Vim's User highlight groups (i.e. - User1, User2 ... User9)
see `:help hl-User1`.  Use these groups in your statusline config, then define
highlight groups for each Vim mode, and Dauber will link them to User1 - User9
when the mode switches.
