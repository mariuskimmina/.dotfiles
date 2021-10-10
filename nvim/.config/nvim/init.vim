let mapleader = " "
lua require("mk")

" Use a blinking upright bar cursor in Insert mode, a blinking block in normal
if &term == 'xterm-256color' || &term == 'screen-256color'
    let &t_SI = "\<Esc>[5 q"
    let &t_EI = "\<Esc>[1 q"
endif

if exists('$TMUX')
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
endif

" if exists('$TMUX')
    " let &t_SI = "\<Esc>Ptmux;\<Esc>\e[5 q\<Esc>\\"
    " let &t_EI = "\<Esc>Ptmux;\<Esc>\e[2 q\<Esc>\\"
" else
    " let &t_SI = "\e[5 q"
    " let &t_EI = "\e[2 q"
" endif
" 
" 
" if &term =~ '^xterm'
  " " enter vim
  " autocmd VimEnter * silent !echo -ne "\e[3 q"
  " " oherwise
  " let &t_EI .= "\<Esc>[3 q"
  " " insert mode
  " let &t_SI .= "\<Esc>[5 q"
  " " 1 or 0 -> blinking block
  " " 2 -> solid block
  " " 3 -> blinking underscore
  " " 4 -> solid underscore
  " " Recent versions of xterm (282 or above) also support
  " " 5 -> blinking vertical bar
  " " 6 -> solid vertical bar
  " " leave vim
  " autocmd VimLeave * silent !echo -ne "\e[5 q"
" endif

