"colorscheme slate
colorscheme desert

let g:CommandTMaxFiles = 50000      " commant-t scan files size
set autoindent                      " auto indent code
set autoread                        " auto reload file
set colorcolumn=80                  " 80 column line
set cursorline                      " highlight current line
set foldmethod=marker               " folds defined by markers in the text
set hlsearch                        " highlight all search pattern matches
set incsearch                       " enable incremental search
set laststatus=2                    " always show statusline
set noeb vb t_vb=                   " remove beep
set nolist                          " dont show end of line symbol
set nomousehide                     " dont hide mouse while typing
set noswapfile                      " no create swap file
set nowrap                          " dont wrap line
set number                          " show line number
set shellcmdflag=-ic                " load .bashrc

call pathogen#infect()

filetype plugin indent on
" tabstop     (ts)  : tab space length
" shiftwidth  (sw)  : set indent space length
" softtabstop (sts) : makes spaces feel like tabs on deleting
" expandtab         : tab as spaces
autocmd Filetype html       setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype ruby       setlocal ts=2 sw=2 sts=2 expandtab
autocmd Filetype javascript setlocal ts=4 sw=4 sts=4 expandtab

" setting shorcuts
map ,c :Rcontroller<CR>
map ,m :Rmodel<CR>
map ,v :Rview<CR>
map <C-b> :BufExplorer<CR>
map <C-l> :set list!<CR><BAR>:echo<CR>
map <C-n> :DirDiffNext<CR>
map <D-t> :CommandT<CR>
map <F2> :NERDTreeToggle<CR>
map <silent> <Space> :nohlsearch<BAR>:echo<CR>
nnoremap \a :Ack <cword><CR>
nnoremap do do<CR> ]c<CR>
nnoremap dp dp<CR> ]c<CR>
noremap <F5> :CommandTFlush<CR>

" delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()
