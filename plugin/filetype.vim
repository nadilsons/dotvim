filetype plugin indent on
" tabstop     (ts)  : tab space length
" shiftwidth  (sw)  : set indent space length
" softtabstop (sts) : makes spaces feel like tabs on deleting
" expandtab         : tab as spaces
autocmd Filetype html       setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby       setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 expandtab

" Forcing syntax color for files with odd extensions
au BufNewFile,BufRead *.ejs set filetype=html
