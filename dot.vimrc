"colorscheme slate
colorscheme desert

let g:CommandTMaxFiles = 50000      " commant-t scan files size
set autoindent                      " auto indent code
set autoread                        " auto reload file
set colorcolumn=80                  " 80 column line
set cursorline                      " highlight current line
set expandtab                       " tab as spaces
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
set shiftwidth=2                    " set indent space length
set tabstop=2                       " tab space length
set wildignore+=.git,tmp,*swp,*.log " ignore file on command-t and ack

call pathogen#infect()

filetype plugin indent on

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

" auto reload .vimrc or .gvimrc when file is saved
autocmd bufwritepost *vimrc source $MYVIMRC | source $MYGVIMRC | call Pl#Load()

" delete trailing white space on save
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite * :call DeleteTrailingWS()
