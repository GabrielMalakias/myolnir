let g:netrw_liststyle=3
let g:netrw_banner=0
let g:netrw_browse_split=1
let g:netrw_winsize=30

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
