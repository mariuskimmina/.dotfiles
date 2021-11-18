let mapleader = " "
lua require("mk")

if &term =~ '^xterm'
  " enter vim
  autocmd VimEnter * silent !echo -ne "\e[3 q"
  " oherwise
  let &t_EI .= "\<Esc>[3 q"
  " insert mode
  let &t_SI .= "\<Esc>[5 q"
  " 1 or 0 -> blinking block
  " 2 -> solid block
  " 3 -> blinking underscore
  " 4 -> solid underscore
  " Recent versions of xterm (282 or above) also support
  " 5 -> blinking vertical bar
  " 6 -> solid vertical bar
  " leave vim
  autocmd VimLeave * silent !echo -ne "\e[5 q"
endif
